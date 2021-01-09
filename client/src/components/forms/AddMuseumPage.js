import { useForm, FormProvider } from "react-hook-form";
import Grid from "@material-ui/core/Grid";
import Button from "@material-ui/core/Button";
import Typography from '@material-ui/core/Typography';
import { useHistory } from "react-router"
import React, { useState, useEffect } from 'react';

import FormInput from "../../controls/input/index";
import FormSelect from "../../select/index";


function AddMuseumPage(props) {
  
  const history = useHistory();
  const methods = useForm();
  const { handleSubmit } = methods;

  const onSubmit = (data) => {
    console.log(data);

    fetch('http://localhost:3003/museum', {
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
        history.push("/museumadded")
    })
    .catch((error) => console.log("Error: " + error.message));
  };

  const types = [
    {
      id: "Archaeological",
      label: "Archaeological",
    },
    {
      id: "Gallery",
      label: "Gallery",
    },
    {
      id: "Natural History",
      label: "Natural History",
    },
  ];

  const cities = [
    {
      id: "1",
      label: "Berlin"
    },
    {
      id: "2",
      label: "Athens"
    },
    {
      id: "3",
      label: "Paris"
    }
  ]

  const ownerships = [
    {
      id: "state-owned",
      label: "State Owned"
    }
  ]

  return (
    <div style={{ padding: "40px" }}>
      <Typography gutterBottom color="textPrimary" variant="h1" component="h1">
      add a museum.
      </Typography>

      <div style={{ padding: "10px" }}>
        <FormProvider {...methods}> 
          <form>
            <Grid container spacing={2}>
              <Grid item xs={6}>
                <FormInput name="museumID" label="Museum ID" isRequired={true} />
              </Grid>
              <Grid item xs={6}>
                <FormInput name="name" label="Museum Name" isRequired={true}/>
              </Grid>
              <Grid item xs={6}>
                <FormSelect name="type" label="Museum Type" options={types} />
              </Grid>
              <Grid item xs={6}>
                <FormInput name="description" label="Description" />
              </Grid>
              <Grid item xs={6}>
                <FormInput name="image" label="URL of image" />
              </Grid>
              <Grid item xs={6}>
                <FormInput name="address" label="Address" />
              </Grid>
              <Grid item xs={6}>
                <FormInput name="email" label="Email" />
              </Grid>
              <Grid item xs={6}>
                <FormInput name="phone" label="Phone" />
              </Grid>
              <Grid item xs={6}>
                <FormInput name="annualNumberOfVisitors" label="Average Annual Number of Visitors" />
              </Grid>
              <Grid item xs={6}>
                <FormInput name="staff" label="Staff" />
              </Grid>
              <Grid item xs={6}>
                <FormInput name="website" label="Website" />
              </Grid>
              <Grid item xs={6}>
                <FormSelect name="cityID" label="City" options={cities} />
              </Grid>
              <Grid item xs={6}>
                <FormSelect name="ownership" label="Ownership" options={ownerships} />
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

export default AddMuseumPage;
