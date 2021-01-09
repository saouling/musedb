import React from "react";
import { useFormContext, Controller } from "react-hook-form";
import TextField from "@material-ui/core/TextField";

function FormInput(props) {
  const { control } = useFormContext();
  const { name, label, isRequired } = props;


  return (
    <Controller
      as={TextField}
      rules={{required: isRequired}}
      name={name}
      control={control}
      defaultValue=""
      label={label}
      fullWidth={true}
      {...props}
    />
  );
}

export default FormInput;

