class Abingo::Alternative
  include MongoMapper::Document
  
  key :content, Array
  key :lookup, String, :index => true
  key :weight, Integer, :default => 1
  key :participants, Integer, :default => 0
  key :conversions, Integer, :default => 0
  
  include Abingo::ConversionRate

  belongs_to :experiment, :class_name => "Abingo::Experiment", :foreign_key => "abingo_experiment_id"

  def self.calculate_lookup(test_name, alternative_name)
    Digest::MD5.hexdigest(Abingo.salt + test_name + alternative_name.to_s)
  end

  def self.score_conversion(test_name)
    viewed_alternative = Abingo.find_alternative_for_user(test_name, Abingo::Experiment.alternatives_for_test(test_name))
    self.collection.update({:lookup => self.calculate_lookup(test_name, viewed_alternative)}, {:$inc => {:conversions => 1}})
  end

  def self.score_participation(test_name)
    viewed_alternative = Abingo.find_alternative_for_user(test_name, Abingo::Experiment.alternatives_for_test(test_name))
    self.collection.update({:lookup => self.calculate_lookup(test_name, viewed_alternative)}, {:$inc => {:participants => 1}})
  end
end