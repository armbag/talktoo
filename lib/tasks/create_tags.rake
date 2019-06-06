namespace :db do
  desc "Create tags"

  task :tags do
    Tag.destroy_all

    list = ["Architecture", "Human Rights", "Journalism", "Mathematics", "Art", "Communications", "Design", "Business", "Medicine", "Law", "Advertising", "Politics", "Public Relations", "Travel", "Programming", "Games", "Marketing", "Oracle", "Android", "Photography", "Java", "Ruby on Rails", "PHP", "IPhone Development", "Data Science", "Google", "VOIP", "Social Media", "Big Data", "Leadership", "IOS", "Branding", "Resume", "Agriculture", "SQL", "Linux", "SEO", "Facebook", "Psychology", "Construction", "Small Business", "SharePoint", "Music", "Healthcare", "Entrepreneurship", "Javascript", "Linux", "Windows", "Mobile", "Project Management", "Web Development", "Analytics", "Wine", "Supply Chain", "Biotechnology", "WordPress", "Fashion", "Digital Marketing", "Customer Procurement", "Telecom", "Cloud Computing", "Job Interviewing", "Graphic Design", "Sales", "PMP", "Electronics", "Python", "Outsourcing", "Logistics", "SMS", "Energy", "Solar", "Call Center", "FMCG", "Social Media Marketing", "Aerospace", "Health", "Packaging", "Strategy", "Data Center", "Forex", "Manufacturing", "E-Commerce", "Private Equity", "LED", "Mobile Apps", "3D Printing", "SEO", "Internet Of Things", "Franchise", "Film", "Restaurants", "Oil", "Business Intelligence", "Cosmetics", "Online Marketing", "Security", "HTML5", "Agile", "Change Management", "Negotiating"]
    list = list.sort

    list.each do |tag|
      Tag.create!(name: tag)
    end
  end
end

# user18.tags = [ travel, humour ]
# user19.tags = [ travel ]
