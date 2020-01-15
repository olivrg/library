import React from "react";
import { Mutation } from "react-apollo";
import ProcessItemForm from "../ProcessItemForm";
import { AddItemMutation } from "./operations.graphql";

const AddItemForm = () => (
  <Mutation mutation={AddItemMutation}>
    {(addItem, { loading }) => (
      <ProcessItemForm
        buttonText="Add Item"
        loading={loading}
        onProcessItem={({ title, description, imageUrl }) =>
          addItem({
            variables: {
              title,
              description,
              imageUrl
            }
          })
        }
      />
    )}
  </Mutation>
);

export default AddItemForm;
