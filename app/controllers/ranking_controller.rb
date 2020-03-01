class RankingController < ApplicationController

  def index
    @company_tel_mail = Company.find(Comment.group(:tel_mail).order('count(company_id) desc').limit(3).pluck(:tel_mail))
    @company_estimate = Company.find(Comment.group(:estimate).order('count(company_id) desc').limit(3).pluck(:estimate))
    @company_operator = Company.find(Comment.group(:operator).order('count(company_id) desc').limit(3).pluck(:operator))
    @company_service = Company.find(Comment.group(:service).order('count(company_id) desc').limit(3).pluck(:service))
  end
  
end
