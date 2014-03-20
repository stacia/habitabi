require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe ValuesController do

  # This should return the minimal set of attributes required to create a valid
  # Value. As you add validations to Value, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { {  } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ValuesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all values as @values" do
      value = Value.create! valid_attributes
      get :index, {}, valid_session
      assigns(:values).should eq([value])
    end
  end

  describe "GET show" do
    it "assigns the requested value as @value" do
      value = Value.create! valid_attributes
      get :show, {:id => value.to_param}, valid_session
      assigns(:value).should eq(value)
    end
  end

  describe "GET new" do
    it "assigns a new value as @value" do
      get :new, {}, valid_session
      assigns(:value).should be_a_new(Value)
    end
  end

  describe "GET edit" do
    it "assigns the requested value as @value" do
      value = Value.create! valid_attributes
      get :edit, {:id => value.to_param}, valid_session
      assigns(:value).should eq(value)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Value" do
        expect {
          post :create, {:value => valid_attributes}, valid_session
        }.to change(Value, :count).by(1)
      end

      it "assigns a newly created value as @value" do
        post :create, {:value => valid_attributes}, valid_session
        assigns(:value).should be_a(Value)
        assigns(:value).should be_persisted
      end

      it "redirects to the created value" do
        post :create, {:value => valid_attributes}, valid_session
        response.should redirect_to(Value.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved value as @value" do
        # Trigger the behavior that occurs when invalid params are submitted
        Value.any_instance.stub(:save).and_return(false)
        post :create, {:value => {  }}, valid_session
        assigns(:value).should be_a_new(Value)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Value.any_instance.stub(:save).and_return(false)
        post :create, {:value => {  }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested value" do
        value = Value.create! valid_attributes
        # Assuming there are no other values in the database, this
        # specifies that the Value created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Value.any_instance.should_receive(:update).with({ "these" => "params" })
        put :update, {:id => value.to_param, :value => { "these" => "params" }}, valid_session
      end

      it "assigns the requested value as @value" do
        value = Value.create! valid_attributes
        put :update, {:id => value.to_param, :value => valid_attributes}, valid_session
        assigns(:value).should eq(value)
      end

      it "redirects to the value" do
        value = Value.create! valid_attributes
        put :update, {:id => value.to_param, :value => valid_attributes}, valid_session
        response.should redirect_to(value)
      end
    end

    describe "with invalid params" do
      it "assigns the value as @value" do
        value = Value.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Value.any_instance.stub(:save).and_return(false)
        put :update, {:id => value.to_param, :value => {  }}, valid_session
        assigns(:value).should eq(value)
      end

      it "re-renders the 'edit' template" do
        value = Value.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Value.any_instance.stub(:save).and_return(false)
        put :update, {:id => value.to_param, :value => {  }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested value" do
      value = Value.create! valid_attributes
      expect {
        delete :destroy, {:id => value.to_param}, valid_session
      }.to change(Value, :count).by(-1)
    end

    it "redirects to the values list" do
      value = Value.create! valid_attributes
      delete :destroy, {:id => value.to_param}, valid_session
      response.should redirect_to(values_url)
    end
  end

end
