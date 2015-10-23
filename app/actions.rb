#just to test for getting data on the 'candidates/show erb'
# REPUBLICAN CANDIDATES
PILOSI = 'N00007360'
CRUZ = 'N00033085'
GRAHAM = 'N00009975'
PAUL = 'N00030836'
RUBIO = 'N00030612'



#DEMOCRATIC CANDIDATES
CLINTON = 'N00000019'
SANDERS = 'N00000528'
# ----------------------------------------

helpers do

  def extract_amounts(cand_type)
    total = 0
    sum_pac = 0
    sum_indiv = 0
    
    cand_type.each do |org|
      total += org["total"].to_i
      sum_pac += org["pacs"].to_i 
      sum_indiv += org["indivs"].to_i
    end
    [sum_pac, sum_indiv, total]
  end 
  
  # turns integer into a decimal and adds Million string
  def to_million(num)
    "$#{(num.to_f / 1000000).round(2)} Million"
  end

  # takes "last_name, first_name" format and outputs first name only
  def first_name(full_name)
    full_name.partition(', ').last
  end

  # takes integer and transforms it into a number with commas ex: 10000 => "10,000"
  def fancy_number(num)
    "$" + num.to_s.reverse.scan(/\d{3}|.+/).join(",").reverse
  end

end

#landing page (aka home page)
get '/' do
  erb :index
end

#shows a specific candidate
get '/candidates/show/:id' do

  candidate = OpenSecrets::Candidate.new
  cand_sum = candidate.summary({:cid => params[:id]})["response"]
  @cand_sum = cand_sum["summary"]

  cand_con = candidate.contributors({:cid => params[:id]})["response"]
  @cand_con = cand_con["contributors"]
  @cand_con_extract = extract_amounts(@cand_con["contributor"])

  cand_ind = candidate.industries({:cid => params[:id]})["response"]
  @cand_ind = cand_ind["industries"]
  @cand_ind_extract = extract_amounts(@cand_ind["industry"])

  cand_sec = candidate.sector({:cid => params[:id]})["response"]
  @cand_sec = cand_sec["sectors"]
  @cand_sec_extract = extract_amounts(@cand_sec["sector"])
 
  erb :'candidates/show'
end

#shows all the candidates
get '/candidates' do
  erb :'candidates/index'
end

get '/candidates/compare_candidates' do
  erb :'candidates/compare_candidates'
end

post '/candidates/compare' do
# Candidate one
  candidate = OpenSecrets::Candidate.new
  cand_sum = candidate.summary({:cid => params[:cand1]})["response"]
  @cand_sum = cand_sum["summary"]

  cand_con = candidate.contributors({:cid => params[:cand1]})["response"]
  @cand_con = cand_con["contributors"]
  @cand_con_extract = extract_amounts(@cand_con["contributor"])

  cand_ind = candidate.industries({:cid => params[:cand1]})["response"]
  @cand_ind = cand_ind["industries"]
  @cand_ind_extract = extract_amounts(@cand_ind["industry"])

  cand_sec = candidate.sector({:cid => params[:cand1]})["response"]
  @cand_sec = cand_sec["sectors"]
  @cand_sec_extract = extract_amounts(@cand_sec["sector"])
  
# Candidate two 
  cand2_sum = candidate.summary({:cid => params[:cand2]})["response"]
  @cand2_sum = cand2_sum["summary"]

  cand2_con = candidate.contributors({:cid => params[:cand2]})["response"]
  @cand2_con = cand2_con["contributors"]
  @cand2_con_extract = extract_amounts(@cand2_con["contributor"])

  cand2_ind = candidate.industries({:cid => params[:cand2]})["response"]
  @cand2_ind = cand2_ind["industries"]
  @cand2_ind_extract = extract_amounts(@cand2_ind["industry"])

  cand2_sec = candidate.sector({:cid => params[:cand2]})["response"]
  @cand2_sec = cand2_sec["sectors"]
  @cand2_sec_extract = extract_amounts(@cand2_sec["sector"])

  erb :'candidates/compare'

end