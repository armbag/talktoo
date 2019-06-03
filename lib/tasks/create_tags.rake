namespace :db do
  desc "Create tags"

  task :tags do
    Tag.destroy_all

    list = ["Communications", "Design", "Business", "Medicine", "Law", "Advertising", "Politics", "Public Relations", "Travel", "Programming", "Games", "Marketing", "Oracle", "Android", "SAP", "Java", "Microsoft", "PHP", "IPhone", "Data Science", "Google", "VOIP", "Social Media", "Big Data", "Leadership", "IOS", "IPad", "Resume", "Agriculture", "SQL", "Linux", "SEO", "Facebook", "ECommerce", "Construction", "Small", "SharePoint", "Music", "Healthcare", "Entrepreneur", "Javascript", "Hadoop", "Windows", "Mobile", "Project Management", "Web Development", "Analytics", "Wine", "Supply Chain", "Biotechnology", "WordPress", "Fashion", "Digital Marketing", "Customer Procurement", "Telecom", "Cloud Computing", "Interview Questions", "Graphic Design", "Sales", "PMP", "Electronics", "Python", "Outsourcing", "Logistics", "SMS", "Energy", "H1B", "Solar", "Call Center", "FMCG", "Social Media Marketing", "Aerospace", "Health", "Packaging", "Strategy", "HVAC", "Data Center", "ITIL", "Forex", "Manufacturing", "E-Commerce", "Private Equity", "LED", "PMI", "Semiconductor", "Mobile Apps", "3D Printing", "CIO", "Internet Of Things", "Selenium", "Copper", "Franchise", "Chemicals", "Restaurant", "Oil", "Business Intelligence", "Cosmetics", "Online Marketing", "Security", "HTML5", "Agile", "Change Management", "Magento"]
    list = list.sort

    list.each do |tag|
      Tag.create!(name: tag)
    end
  end
end

# user18.tags = [ travel, humour ]
# user19.tags = [ travel ]
