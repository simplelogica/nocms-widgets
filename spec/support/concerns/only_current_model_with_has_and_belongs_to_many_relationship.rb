shared_examples_for "only current model with has and belongs to many relationship" do |model_name, related_model_factory, model_relationship|

  context "when adding various #{model_relationship}" do

    let(:related_objects)  { create_list related_model_factory, 2 }
    let(:model_object) { create model_name, model_relationship => related_objects }

    before { model_object }
    subject { model_object }

    it ("should include each #{model_relationship}") do
      related_objects.each do |related_object|
        expect(subject.send(model_relationship.to_sym)).to include related_object
      end
    end

  end

end