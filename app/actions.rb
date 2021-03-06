CANDIDATES = {
  CRUZ: Candidate.new('Ted Cruz', 'N00033085', "data:image/jpeg;base64,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", "https://s3.amazonaws.com/assets.opensecrets.org/pres16/img/squares/cruz_declared.jpg"),
  GRAHAM: Candidate.new('Lindsey Graham', 'N00009975', "data:image/jpeg;base64,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", "https://s3.amazonaws.com/assets.opensecrets.org/pres16/img/squares/graham_declared.jpg"),
  PAUL: Candidate.new('Paul Rand', 'N00030836', "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQRZMebXmqySiT94ZRC37VVpVbtLUrgJG5UikHzfeMPF-e3thqttg", "https://s3.amazonaws.com/assets.opensecrets.org/pres16/img/squares/paul_declared.jpg"),
  RUBIO: Candidate.new('Marco Rubio', 'N00030612', "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5drphTeVglLF2qcFfl9vUiebsJ5qST36x_r3tpUfCAzuDYnmk", "https://s3.amazonaws.com/assets.opensecrets.org/pres16/img/squares/rubio_declared.jpg"),
  PELOSI: Candidate.new('Nancy Pelosi', 'N00007360', "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTXNDBSoEiJ-RicDoZPa0l5qMjRcrEt5JcwC20Pe3Yi3sOFeoYXoQ", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzLwrf6qUsfqndNk_FoV-D-ZZ14AX2GYEhRFNUfVfLKiMoJgGF"),
  SANDERS: Candidate.new('Bernie Sanders', 'N00000528', "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTJfUjJClB4eQHoy0kTZmIVj5qPYjbA3pSIDQ3fNs8K2GIfitUGIw", "https://s3.amazonaws.com/assets.opensecrets.org/pres16/img/squares/sanders_declared.jpg")
}
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

  def divide_by_mil(num)
    (num.to_f / 1000000)
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

  CANDIDATES.each do |name, cand|
    if cand.id == params[:id].to_s 
      @cand_img = cand.picture
    end 
  end 

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
  @candidates = CANDIDATES
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