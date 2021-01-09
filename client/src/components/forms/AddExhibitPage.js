import React from "react";
import { useForm, FormProvider } from "react-hook-form";
import Grid from "@material-ui/core/Grid";
import Button from "@material-ui/core/Button";
import Typography from '@material-ui/core/Typography';
import { useHistory } from "react-router"

import FormInput from "../../controls/input/index";
import FormSelect from "../../select/index";


function AddExhibitPage(props) {

  const history = useHistory();
  const methods = useForm();
  const { handleSubmit } = methods;

  const onSubmit = (data) => {
    // console.log(data);

    fetch('http://localhost:3003/exhibit', {
      method: 'POST',
      redirect: 'follow',
      headers: {
        'Content-Type': 'application/json',
        'Access-Control-Allow-Origin': '*'
      },
      body: JSON.stringify(data)
    })
    .then(response => response.json())
    .then(json => {
      console.log(json)
      if (json.status == '201')
        history.push("/exhibitadded")
    })
    .catch((error) => console.log("Error: " + error.message));
  };

  // types of exhibits. Can't be different than one of the following values
  const types = [
    {
      id: "Painting",
      label: "Painting",
    },
    {
      id: "Sculpture",
      label: "Sculpture",
    },
    {
      id: "Fossil",
      label: "Fossil",
    },
    {
      id: "Photograph",
      label: "Photograph",
    },
    {
      id: "Other",
      label: "Other",
    }
  ];

  // some example data for creators. On a later update, a list of the available creators should be fetched from the database
  const creators = [
    {
      id: "800000",
      label: "Vincent Van Gogh",
    },
    {
      id: "800001",
      label: "Gustav Klimt",
    },
    {
      id: "800002",
      label: "Phidias",
    },
    {
      id: "800003",
      label: "Maja Vukoje",
    },
    {
      id: "800004",
      label: "Michelangelo",
    }
  ];

  return (
    <div style={{ padding: "40px" }}>
      <Typography gutterBottom color="textPrimary" variant="h1" component="h1">
      add an exhibit.
      </Typography>

      <div style={{ padding: "10px" }}>
        <FormProvider {...methods}> 
          <form>
            <Grid container spacing={2}>
              <Grid item xs={6}>
                <FormInput name="exhibitID" label="Exhibit ID" isRequired={true}/>
              </Grid>
              <Grid item xs={6}>
                <FormInput name="name" label="Exhibit Title" isRequired={true}/>
              </Grid>
              <Grid item xs={6}>
                <FormSelect name="type" label="Exhibit Type" options={types} isRequired={true}/>
              </Grid>
              <Grid item xs={6}>
                <FormInput name="description" label="Description" />
              </Grid>
              <Grid item xs={6}>
                <FormInput name="photo" label="URL of image" />
              </Grid>
              <Grid item xs={6}>
                <FormInput name="exhibitionID" label="Exhibition ID (provided by the museum)" isRequired={true}/>
              </Grid>
              <Grid item xs={6}>
                <FormSelect name="creatorID" label="Creator" options={creators} isRequired={true}/>
              </Grid>
            </Grid>
          </form>
        </FormProvider>
      </div>
      <br></br>
      <Button
        variant="contained"
        color="primary"
        onClick={handleSubmit(onSubmit)}
      >
        SUBMIT
      </Button>

    </div>
  );
}

export default AddExhibitPage;
