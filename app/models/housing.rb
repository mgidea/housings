class Housing < ActiveRecord::Base
  US_STATES = ["AL","AK","AZ","AR","CA","CO","CT","DE","FL","GA","HI","ID","IL","IN","IA",
    "KS","KY","LA","ME","MT","NE","NV","NH","NJ","NM","NY","NC","ND","OH","OK","OR","MD",
    "MA","MI","MN","MS","MO","PA","RI","SC","SD","TN","TX","UT","VT","VA","WA","WV","WI",
    "WY"
]

  validates_presence_of :address
  validates_presence_of :city
  validates_presence_of :state
  validates_inclusion_of :state, in: US_STATES, message: "is not an abbreviated US State"
  validates_presence_of :zip_code
  validates_numericality_of :zip_code
end
