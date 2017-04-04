# -*- encoding : utf-8 -*-

require 'spec_helper'

describe "Exchange::ISO" do
  let(:subject) { Exchange::ISO }
  describe "self.definitions" do
    it "should be a hash of exactly the ISO standard definitions loaded from the yaml file" do
      expect(subject.definitions).to be === {
        :nio=>{:minor_unit=>2, :currency=>"Cordoba Oro", :symbol=>"C$"}, 
        :lak=>{:minor_unit=>2, :currency=>"Kip", :symbol=>"₭"}, 
        :sar=>{:separators=>{:major=>",", :minor=>"."}, :minor_unit=>2, :currency=>"Saudi Riyal", :symbol=>"﷼"}, 
        :nok=>{:separators=>{:major=>".", :minor=>","}, :minor_unit=>2, :currency=>"Norwegian Krone", :symbol=>"kr"}, 
        :usd=>{:separators=>{:major=>",", :minor=>"."}, :minor_unit=>2, :currency=>"US Dollar", :symbol=>"$"}, 
        :rub=>{:separators=>{:major=>".", :minor=>","}, :minor_unit=>2, :currency=>"Russian Ruble", :symbol=>"руб"}, 
        :xcd=>{:separators=>{:major=>",", :minor=>"."}, :minor_unit=>2, :currency=>"East Caribbean Dollar", :symbol=>"$"}, 
        :omr=>{:separators=>{:major=>",", :minor=>"."}, :minor_unit=>3, :currency=>"Rial Omani", :symbol=>"﷼"}, 
        :amd=>{:separators=>{:major=>",", :minor=>"."}, :minor_unit=>2, :currency=>"Armenian Dram", :symbol=>nil}, 
        :cdf=>{:minor_unit=>2, :currency=>"Congolese Franc", :symbol=>nil}, 
        :kpw=>{:minor_unit=>2, :currency=>"North Korean Won", :symbol=>"₩"}, 
        :cny=>{:separators=>{:major=>",", :minor=>"."}, :minor_unit=>2, :currency=>"Yuan Renminbi", :symbol=>"¥"}, 
        :kes=>{:separators=>{:major=>",", :minor=>"."}, :minor_unit=>2, :currency=>"Kenyan Shilling", :symbol=>nil}, 
        :khr=>{:minor_unit=>2, :currency=>"Riel", :symbol=>"៛"}, 
        :pln=>{:separators=>{:major=>" ", :minor=>","}, :minor_unit=>2, :currency=>"Zloty", :symbol=>"zł"}, 
        :mvr=>{:minor_unit=>2, :currency=>"Rufiyaa", :symbol=>nil}, 
        :gtq=>{:separators=>{:major=>",", :minor=>"."}, :minor_unit=>2, :currency=>"Quetzal", :symbol=>"Q"}, 
        :clp=>{:separators=>{:major=>"."}, :minor_unit=>0, :currency=>"Chilean Peso", :symbol=>"$"}, 
        :inr=>{:separators=>{:major=>",", :minor=>"."}, :format=>"#,##,###.##", :minor_unit=>2, :currency=>"Indian Rupee", :symbol=>""}, 
        :bzd=>{:separators=>{:major=>",", :minor=>"."}, :minor_unit=>2, :currency=>"Belize Dollar", :symbol=>"BZ$"}, 
        :myr=>{:separators=>{:major=>",", :minor=>"."}, :minor_unit=>2, :currency=>"Malaysian Ringgit", :symbol=>"RM"}, 
        :hkd=>{:separators=>{:major=>",", :minor=>"."}, :minor_unit=>2, :currency=>"Hong Kong Dollar", :symbol=>"$"}, 
        :cop=>{:separators=>{:major=>".", :minor=>","}, :minor_unit=>2, :currency=>"Colombian Peso", :symbol=>"$"}, 
        :dkk=>{:separators=>{:major=>".", :minor=>","}, :minor_unit=>2, :currency=>"Danish Krone", :symbol=>"kr"}, 
        :sek=>{:separators=>{:major=>".", :minor=>","}, :minor_unit=>2, :currency=>"Swedish Krona", :symbol=>"kr"}, 
        :byr=>{:minor_unit=>0, :currency=>"Belarussian Ruble", :symbol=>"p."}, 
        :lyd=>{:minor_unit=>3, :currency=>"Libyan Dinar", :symbol=>nil}, 
        :ron=>{:separators=>{:major=>".", :minor=>","}, :minor_unit=>2, :currency=>"New Romanian Leu", :symbol=>"lei"}, 
        :dzd=>{:minor_unit=>2, :currency=>"Algerian Dinar", :symbol=>nil}, :bif=>{:minor_unit=>0, :currency=>"Burundi Franc", :symbol=>nil}, 
        :ars=>{:separators=>{:major=>".", :minor=>","}, :minor_unit=>2, :currency=>"Argentine Peso", :symbol=>"$"}, 
        :gip=>{:separators=>{:major=>",", :minor=>"."}, :minor_unit=>2, :currency=>"Gibraltar Pound", :symbol=>"£"}, 
        :uyi=>{:minor_unit=>0, :currency=>"Uruguay Peso en Unidades Indexadas (URUIURUI)", :symbol=>nil}, 
        :bob=>{:separators=>{:major=>",", :minor=>"."}, :minor_unit=>2, :currency=>"Boliviano", :symbol=>"$b"}, 
        :ssp=>{:minor_unit=>2, :currency=>"South Sudanese Pound", :symbol=>nil}, 
        :ngn=>{:minor_unit=>2, :currency=>"Naira", :symbol=>"₦"}, 
        :pgk=>{:minor_unit=>2, :currency=>"Kina", :symbol=>nil}, 
        :std=>{:minor_unit=>2, :currency=>"Dobra", :symbol=>nil}, 
        :xof=>{:minor_unit=>0, :currency=>"CFA Franc BCEAO", :symbol=>nil}, 
        :aed=>{:separators=>{:major=>",", :minor=>"."}, :minor_unit=>2, :currency=>"UAE Dirham", :symbol=>nil}, 
        :ern=>{:minor_unit=>2, :currency=>"Nakfa", :symbol=>nil}, :mwk=>{:minor_unit=>2, :currency=>"Kwacha", :symbol=>nil}, 
        :cup=>{:separators=>{:major=>",", :minor=>"."}, :minor_unit=>2, :currency=>"Cuban Peso", :symbol=>"₱"}, 
        :usn=>{:minor_unit=>2, :currency=>"US Dollar (Next day)", :symbol=>nil}, 
        :gmd=>{:minor_unit=>2, :currency=>"Dalasi", :symbol=>nil}, 
        :cve=>{:minor_unit=>2, :currency=>"Cape Verde Escudo", :symbol=>nil}, 
        :tzs=>{:separators=>{:major=>",", :minor=>"."}, :minor_unit=>2, :currency=>"Tanzanian Shilling", :symbol=>nil}, 
        :cou=>{:minor_unit=>2, :currency=>"Unidad de Valor Real", :symbol=>nil}, 
        :btn=>{:minor_unit=>2, :currency=>"Ngultrum", :symbol=>nil},
        :zwl=>{:minor_unit=>2, :currency=>"Zimbabwe Dollar", :symbol=>nil}, 
        :ugx=>{:minor_unit=>2, :currency=>"Uganda Shilling", :symbol=>nil}, 
        :syp=>{:minor_unit=>2, :currency=>"Syrian Pound", :symbol=>"£"}, 
        :mad=>{:minor_unit=>2, :currency=>"Moroccan Dirham", :symbol=>nil}, 
        :mnt=>{:minor_unit=>2, :currency=>"Tugrik", :symbol=>"₮"}, 
        :lsl=>{:minor_unit=>2, :currency=>"Loti", :symbol=>nil}, 
        :xaf=>{:minor_unit=>0, :currency=>"CFA Franc BEAC", :symbol=>nil}, 
        :shp=>{:minor_unit=>2, :currency=>"Saint Helena Pound", :symbol=>"£"}, 
        :htg=>{:minor_unit=>2, :currency=>"Gourde", :symbol=>nil}, 
        :rsd=>{:minor_unit=>2, :currency=>"Serbian Dinar", :symbol=>"Дин."}, 
        :mga=>{:minor_unit=>2, :currency=>"Malagasy Ariary", :symbol=>nil},
        :top=>{:separators=>{:major=>",", :minor=>"."}, :minor_unit=>2, :currency=>"Pa’anga", :symbol=>nil}, 
        :mzn=>{:minor_unit=>2, :currency=>"Mozambique Metical", :symbol=>"MT"}, 
        :lvl=>{:separators=>{:major=>",", :minor=>"."}, :minor_unit=>2, :currency=>"Latvian Lats", :symbol=>"Ls"}, 
        :fkp=>{:minor_unit=>2, :currency=>"Falkland Islands Pound", :symbol=>"£"}, 
        :uss=>{:minor_unit=>2, :currency=>"US Dollar (Same day)", :symbol=>nil}, 
        :bwp=>{:separators=>{:major=>",", :minor=>"."}, :minor_unit=>2, :currency=>"Pula", :symbol=>"P"}, 
        :hnl=>{:separators=>{:major=>",", :minor=>"."}, :minor_unit=>2, :currency=>"Lempira", :symbol=>"L"}, 
        :eur=>{:separators=>{:major=>",", :minor=>"."}, :minor_unit=>2, :currency=>"Euro", :symbol=>"€"}, 
        :egp=>{:separators=>{:major=>",", :minor=>"."}, :minor_unit=>2, :currency=>"Egyptian Pound", :symbol=>"£"}, 
        :chf=>{:separators=>{:major=>"'", :minor=>"."}, :minor_unit=>2, :currency=>"Swiss Franc"}, 
        :ils=>{:separators=>{:major=>",", :minor=>"."}, :minor_unit=>2, :currency=>"New Israeli Sheqel", :symbol=>"₪"}, 
        :pyg=>{:minor_unit=>0, :currency=>"Guarani", :symbol=>"Gs"}, 
        :lbp=>{:separators=>{:major=>" ", :minor=>"."}, :minor_unit=>2, :currency=>"Lebanese Pound", :symbol=>"£"}, 
        :ang=>{:separators=>{:major=>".", :minor=>","}, :minor_unit=>2, :currency=>"Netherlands Antillean Guilder", :symbol=>"ƒ"}, 
        :kzt=>{:minor_unit=>2, :currency=>"Tenge", :symbol=>"₸"}, 
        :gyd=>{:minor_unit=>2, :currency=>"Guyana Dollar", :symbol=>"$"}, 
        :wst=>{:minor_unit=>2, :currency=>"Tala", :symbol=>nil}, 
        :npr=>{:separators=>{:major=>",", :minor=>"."}, :minor_unit=>2, :currency=>"Nepalese Rupee", :symbol=>"₨"}, 
        :kmf=>{:minor_unit=>0, :currency=>"Comoro Franc", :symbol=>nil}, 
        :thb=>{:separators=>{:major=>",", :minor=>"."}, :minor_unit=>2, :currency=>"Baht", :symbol=>"฿"}, 
        :irr=>{:separators=>{:major=>",", :minor=>"."}, :minor_unit=>2, :currency=>"Iranian Rial", :symbol=>"﷼"}, 
        :srd=>{:minor_unit=>2, :currency=>"Surinam Dollar", :symbol=>"$"}, 
        :jpy=>{:separators=>{:major=>","}, :minor_unit=>0, :currency=>"Yen", :symbol=>"¥"}, 
        :brl=>{:separators=>{:major=>".", :minor=>","}, :minor_unit=>2, :currency=>"Brazilian Real", :symbol=>"R$"}, 
        :uyu=>{:separators=>{:major=>".", :minor=>","}, :minor_unit=>2, :currency=>"Peso Uruguayo", :symbol=>"$U"}, 
        :mop=>{:minor_unit=>2, :currency=>"Pataca", :symbol=>nil}, 
        :bmd=>{:separators=>{:major=>",", :minor=>"."}, :minor_unit=>2, :currency=>"Bermudian Dollar", :symbol=>"$"}, 
        :szl=>{:separators=>{:major=>", ", :minor=>"."}, :minor_unit=>2, :currency=>"Lilangeni", :symbol=>nil}, 
        :etb=>{:minor_unit=>2, :currency=>"Ethiopian Birr", :symbol=>nil}, 
        :jod=>{:separators=>{:major=>",", :minor=>"."}, :minor_unit=>3, :currency=>"Jordanian Dinar", :symbol=>nil},
        :idr=>{:separators=>{:major=>".", :minor=>","}, :minor_unit=>2, :currency=>"Rupiah", :symbol=>"Rp"}, 
        :mdl=>{:minor_unit=>2, :currency=>"Moldovan Leu", :symbol=>nil}, 
        :xpf=>{:minor_unit=>0, :currency=>"CFP Franc", :symbol=>nil}, 
        :mro=>{:minor_unit=>2, :currency=>"Ouguiya", :symbol=>nil}, 
        :yer=>{:minor_unit=>2, :currency=>"Yemeni Rial", :symbol=>"﷼"}, 
        :bam=>{:separators=>{:major=>",", :minor=>"."}, :minor_unit=>2, :currency=>"Convertible Mark", :symbol=>"KM"}, 
        :awg=>{:separators=>{:major=>",", :minor=>"."}, :minor_unit=>2, :currency=>"Aruban Florin", :symbol=>"ƒ"}, 
        :nzd=>{:separators=>{:major=>",", :minor=>"."}, :minor_unit=>2, :currency=>"New Zealand Dollar", :symbol=>"$"}, 
        :pen=>{:separators=>{:major=>",", :minor=>"."}, :minor_unit=>2, :currency=>"Nuevo Sol", :symbol=>"S/."}, 
        :aoa=>{:minor_unit=>2, :currency=>"Kwanza", :symbol=>nil}, 
        :kyd=>{:separators=>{:major=>",", :minor=>"."}, :minor_unit=>2, :currency=>"Cayman Islands Dollar", :symbol=>"$"}, 
        :sll=>{:minor_unit=>2, :currency=>"Leone", :symbol=>nil}, 
        :try=>{:separators=>{:major=>",", :minor=>"."}, :minor_unit=>2, :currency=>"Turkish Lira", :symbol=>""}, 
        :vef=>{:separators=>{:major=>".", :minor=>","}, :minor_unit=>2, :currency=>"Bolivar Fuerte", :symbol=>"Bs"}, 
        :isk=>{:format=>"#.###", :minor_unit=>0, :currency=>"Iceland Krona", :symbol=>"kr"}, 
        :gnf=>{:minor_unit=>0, :currency=>"Guinea Franc", :symbol=>nil}, 
        :bsd=>{:separators=>{:major=>",", :minor=>"."}, :minor_unit=>2, :currency=>"Bahamian Dollar", :symbol=>"$"}, 
        :djf=>{:minor_unit=>0, :currency=>"Djibouti Franc", :symbol=>nil}, 
        :huf=>{:separators=>{:major=>".", :minor=>"."}, :minor_unit=>2, :currency=>"Forint", :symbol=>"Ft"}, 
        :ltl=>{:separators=>{:major=>" ", :minor=>","}, :minor_unit=>2, :currency=>"Lithuanian Litas", :symbol=>"Lt"}, 
        :mxn=>{:separators=>{:major=>",", :minor=>"."}, :minor_unit=>2, :currency=>"Mexican Peso", :symbol=>"$"}, 
        :scr=>{:minor_unit=>2, :currency=>"Seychelles Rupee", :symbol=>"₨"}, 
        :sgd=>{:separators=>{:major=>",", :minor=>"."}, :minor_unit=>2, :currency=>"Singapore Dollar", :symbol=>"$"}, 
        :lkr=>{:minor_unit=>2, :currency=>"Sri Lanka Rupee", :symbol=>"₨"}, 
        :tjs=>{:minor_unit=>2, :currency=>"Somoni", :symbol=>nil}, 
        :tnd=>{:minor_unit=>3, :currency=>"Tunisian Dinar", :symbol=>nil}, 
        :dop=>{:separators=>{:major=>",", :minor=>"."}, :minor_unit=>2, :currency=>"Dominican Peso", :symbol=>"RD$"}, 
        :fjd=>{:minor_unit=>2, :currency=>"Fiji Dollar", :symbol=>"$"}, 
        :gel=>{:minor_unit=>2, :currency=>"Lari", :symbol=>nil}, :sdg=>{:minor_unit=>2, :currency=>"Sudanese Pound", :symbol=>nil}, 
        :vuv=>{:separators=>{:major=>","}, :minor_unit=>0, :currency=>"Vatu", :symbol=>nil}, 
        :bbd=>{:minor_unit=>2, :currency=>"Barbados Dollar", :symbol=>"$"}, 
        :lrd=>{:minor_unit=>2, :currency=>"Liberian Dollar", :symbol=>"$"}, 
        :krw=>{:separators=>{:major=>","}, :minor_unit=>0, :currency=>"Won", :symbol=>"₩"}, 
        :mmk=>{:minor_unit=>2, :currency=>"Kyat", :symbol=>nil}, 
        :mur=>{:separators=>{:major=>",", :minor=>"."}, :minor_unit=>2, :currency=>"Mauritius Rupee", :symbol=>"₨"}, 
        :php=>{:separators=>{:major=>",", :minor=>"."}, :minor_unit=>2, :currency=>"Philippine Peso", :symbol=>"₱"}, 
        :zar=>{:separators=>{:major=>" ", :minor=>"."}, :minor_unit=>2, :currency=>"Rand", :symbol=>"R"}, 
        :kgs=>{:minor_unit=>2, :currency=>"Som", :symbol=>"лв"}, 
        :gbp=>{:separators=>{:major=>",", :minor=>"."}, :minor_unit=>2, :currency=>"Pound Sterling", :symbol=>"£"}, 
        :bgn=>{:minor_unit=>2, :currency=>"Bulgarian Lev", :symbol=>"лв"}, 
        :iqd=>{:minor_unit=>3, :currency=>"Iraqi Dinar", :symbol=>nil}, 
        :tmt=>{:minor_unit=>2, :currency=>"Turkmenistan New Manat", :symbol=>nil}, 
        :uah=>{:separators=>{:major=>" ", :minor=>","}, :minor_unit=>2, :currency=>"Hryvnia", :symbol=>"₴"}, 
        :vnd=>{:separators=>{:major=>"."}, :minor_unit=>0, :currency=>"Dong", :symbol=>"₫"}, 
        :zmk=>{:minor_unit=>2, :currency=>"Zambian Kwacha", :symbol=>nil}, 
        :bov=>{:minor_unit=>2, :currency=>"Mvdol", :symbol=>nil}, 
        :hrk=>{:separators=>{:major=>".", :minor=>","}, :minor_unit=>2, :currency=>"Croatian Kuna", :symbol=>"kn"}, 
        :ttd=>{:minor_unit=>2, :currency=>"Trinidad and Tobago Dollar", :symbol=>"TT$"}, 
        :bhd=>{:separators=>{:major=>",", :minor=>"."}, :minor_unit=>3, :currency=>"Bahraini Dinar", :symbol=>nil}, 
        :clf=>{:minor_unit=>0, :currency=>"Unidades de fomento", :symbol=>nil}, 
        :rwf=>{:minor_unit=>0, :currency=>"Rwanda Franc", :symbol=>nil}, 
        :mkd=>{:separators=>{:major=>",", :minor=>"."}, :minor_unit=>2, :currency=>"Denar", :symbol=>"ден"}, 
        :aud=>{:separators=>{:major=>" ", :minor=>"."}, :minor_unit=>2, :currency=>"Australian Dollar", :symbol=>"$"}, 
        :crc=>{:separators=>{:major=>".", :minor=>","}, :minor_unit=>2, :currency=>"Costa Rican Colon", :symbol=>"₡"},
        :pkr=>{:separators=>{:major=>",", :minor=>"."}, :minor_unit=>2, :currency=>"Pakistan Rupee", :symbol=>"₨"}, 
        :twd=>{:minor_unit=>2, :currency=>"New Taiwan Dollar", :symbol=>"NT$"}, 
        :uzs=>{:minor_unit=>2, :currency=>"Uzbekistan Sum", :symbol=>"лв"}, 
        :czk=>{:separators=>{:major=>".", :minor=>","}, :minor_unit=>2, :currency=>"Czech Koruna", :symbol=>"Kč"}, 
        :azn=>{:minor_unit=>2, :currency=>"Azerbaijanian Manat", :symbol=>"ман"}, 
        :bdt=>{:separators=>{:major=>",", :minor=>"."}, :minor_unit=>2, :currency=>"Taka", :symbol=>nil}, 
        :nad=>{:minor_unit=>2, :currency=>"Namibia Dollar", :symbol=>"$"}, 
        :afn=>{:minor_unit=>2, :currency=>"Afghani", :symbol=>"؋"}, 
        :mxv=>{:minor_unit=>2, :currency=>"Mexican Unidad de Inversion (UDI)", :symbol=>nil}, 
        :cuc=>{:separators=>{:major=>",", :minor=>"."}, :minor_unit=>2, :currency=>"Peso Convertible", :symbol=>nil}, 
        :pab=>{:minor_unit=>2, :currency=>"Balboa", :symbol=>"B/."}, 
        :qar=>{:minor_unit=>2, :currency=>"Qatari Rial", :symbol=>"﷼"}, 
        :sos=>{:minor_unit=>2, :currency=>"Somali Shilling", :symbol=>"S"}, 
        :chw=>{:minor_unit=>2, :currency=>"WIR Franc", :symbol=>nil}, 
        :cad=>{:separators=>{:major=>",", :minor=>"."}, :minor_unit=>2, :currency=>"Canadian Dollar", :symbol=>"$"}, 
        :jmd=>{:separators=>{:major=>",", :minor=>"."}, :minor_unit=>2, :currency=>"Jamaican Dollar", :symbol=>"J$"}, 
        :bnd=>{:separators=>{:major=>",", :minor=>"."}, :minor_unit=>2, :currency=>"Brunei Dollar", :symbol=>"$"}, 
        :all=>{:minor_unit=>2, :currency=>"Lek", :symbol=>"Lek"}, 
        :svc=>{:separators=>{:major=>",", :minor=>"."}, :minor_unit=>2, :currency=>"El Salvador Colon", :symbol=>"$"}, 
        :sbd=>{:minor_unit=>2, :currency=>"Solomon Islands Dollar", :symbol=>"$"}, 
        :ghs=>{:minor_unit=>2, :currency=>"Ghana Cedi", :symbol=>nil}, 
        :kwd=>{:separators=>{:major=>",", :minor=>"."}, :minor_unit=>3, :currency=>"Kuwaiti Dinar", :symbol=>nil}}
    end
  end
  describe "self.country_map" do
    it "should deliver a complete map of country abbreviations to currencies" do
      expect(subject.country_map).to eq({
        :abw => :awg,
        :ad => :eur,
        :ae => :aed,
        :af => :afn,
        :afg => :afn,
        :ag => :xcd,
        :ago => :aoa,
        :ai => :xcd,
        :aia => :xcd,
        :al => :all,
        :ala => :eur,
        :alb => :all,
        :am => :amd,
        :and => :eur,
        :ao => :aoa,
        :ar => :ars,
        :are => :aed,
        :arg => :ars,
        :arm => :amd,
        :as => :usd,
        :asm => :usd,
        :at => :eur,
        :atf => :eur,
        :atg => :xcd,
        :au => :aud,
        :aus => :aud,
        :aut => :eur,
        :aw => :awg,
        :ax => :eur,
        :az => :azn,
        :aze => :azn,
        :ba => :bam,
        :bb => :bbd,
        :bd => :bdt,
        :bdi => :bif,
        :be => :eur,
        :bel => :eur,
        :ben => :xof,
        :bes => :usd,
        :bf => :xof,
        :bfa => :xof,
        :bg => :bgn,
        :bgd => :bdt,
        :bgr => :bgn,
        :bh => :bhd,
        :bhr => :bhd,
        :bhs => :bsd,
        :bi => :bif,
        :bih => :bam,
        :bj => :xof,
        :bl => :eur,
        :blm => :eur,
        :blr => :byr,
        :blz => :bzd,
        :bm => :bmd,
        :bmu => :bmd,
        :bn => :bnd,
        :bo => :bov,
        :bol => :bov,
        :bq => :usd,
        :br => :brl,
        :bra => :brl,
        :brb => :bbd,
        :brn => :bnd,
        :bs => :bsd,
        :bt => :btn,
        :btn => :btn,
        :bv => :nok,
        :bvt => :nok,
        :bw => :bwp,
        :bwa => :bwp,
        :by => :byr,
        :bz => :bzd,
        :ca => :cad,
        :caf => :xaf,
        :can => :cad,
        :cc => :aud,
        :cck => :aud,
        :cd => :cdf,
        :cf => :xaf,
        :cg => :xaf,
        :ch => :chf,
        :che => :chf,
        :chl => :clf,
        :chn => :cny,
        :ci => :xof,
        :civ => :xof,
        :ck => :nzd,
        :cl => :clf,
        :cm => :xaf,
        :cmr => :xaf,
        :cn => :cny,
        :co => :cou,
        :cod => :cdf,
        :cog => :xaf,
        :cok => :nzd,
        :col => :cou,
        :com => :kmf,
        :cpv => :cve,
        :cr => :crc,
        :cri => :crc,
        :cu => :cuc,
        :cub => :cuc,
        :cuw => :ang,
        :cv => :cve,
        :cw => :ang,
        :cx => :aud,
        :cxr => :aud,
        :cy => :eur,
        :cym => :kyd,
        :cyp => :eur,
        :cz => :czk,
        :cze => :czk,
        :de => :eur,
        :deu => :eur,
        :dj => :djf,
        :dji => :djf,
        :dk => :dkk,
        :dm => :xcd,
        :dma => :xcd,
        :dnk => :dkk,
        :do => :dop,
        :dom => :dop,
        :dz => :dzd,
        :dza => :dzd,
        :ec => :usd,
        :ecu => :usd,
        :ee => :eur,
        :eg => :egp,
        :egy => :egp,
        :eh => :mad,
        :er => :ern,
        :eri => :ern,
        :es => :eur,
        :esh => :mad,
        :esp => :eur,
        :est => :eur,
        :et => :etb,
        :eth => :etb,
        :fi => :eur,
        :fin => :eur,
        :fj => :fjd,
        :fji => :fjd,
        :fk => :fkp,
        :flk => :fkp,
        :fm => :usd,
        :fo => :dkk,
        :fr => :eur,
        :fra => :eur,
        :fro => :dkk,
        :fsm => :usd,
        :ga => :xaf,
        :gab => :xaf,
        :gb => :gbp,
        :gbr => :gbp,
        :gd => :xcd,
        :ge => :gel,
        :geo => :gel,
        :gf => :eur,
        :gg => :gbp,
        :ggy => :gbp,
        :gh => :ghs,
        :gha => :ghs,
        :gi => :gip,
        :gib => :gip,
        :gin => :gnf,
        :gl => :dkk,
        :glp => :eur,
        :gm => :gmd,
        :gmb => :gmd,
        :gn => :gnf,
        :gnb => :xof,
        :gnq => :xaf,
        :gp => :eur,
        :gq => :xaf,
        :gr => :eur,
        :grc => :eur,
        :grd => :xcd,
        :grl => :dkk,
        :gt => :gtq,
        :gtm => :gtq,
        :gu => :usd,
        :guf => :eur,
        :gum => :usd,
        :guy => :gyd,
        :gw => :xof,
        :gy => :gyd,
        :hk => :hkd,
        :hkg => :hkd,
        :hm => :aud,
        :hmd => :aud,
        :hn => :hnl,
        :hnd => :hnl,
        :hr => :hrk,
        :hrv => :hrk,
        :ht => :usd,
        :hti => :usd,
        :hu => :huf,
        :hun => :huf,
        :id => :idr,
        :idn => :idr,
        :ie => :eur,
        :il => :ils,
        :im => :gbp,
        :imn => :gbp,
        :in => :inr,
        :ind => :inr,
        :io => :usd,
        :iot => :usd,
        :iq => :iqd,
        :ir => :irr,
        :irl => :eur,
        :irn => :irr,
        :irq => :iqd,
        :is => :isk,
        :isl => :isk,
        :isr => :ils,
        :it => :eur,
        :ita => :eur,
        :jam => :jmd,
        :je => :gbp,
        :jey => :gbp,
        :jm => :jmd,
        :jo => :jod,
        :jor => :jod,
        :jp => :jpy,
        :jpn => :jpy,
        :kaz => :kzt,
        :ke => :kes,
        :ken => :kes,
        :kg => :kgs,
        :kgz => :kgs,
        :kh => :khr,
        :khm => :khr,
        :ki => :aud,
        :kir => :aud,
        :km => :kmf,
        :kn => :xcd,
        :kna => :xcd,
        :kor => :krw,
        :kp => :kpw,
        :kr => :krw,
        :kw => :kwd,
        :kwt => :kwd,
        :ky => :kyd,
        :kz => :kzt,
        :la => :lak,
        :lao => :lak,
        :lb => :lbp,
        :lbn => :lbp,
        :lbr => :lrd,
        :lby => :lyd,
        :lc => :xcd,
        :lca => :xcd,
        :li => :chf,
        :lie => :chf,
        :lk => :lkr,
        :lka => :lkr,
        :lr => :lrd,
        :ls => :zar,
        :lso => :zar,
        :lt => :ltl,
        :ltu => :ltl,
        :lu => :eur,
        :lux => :eur,
        :lv => :lvl,
        :lva => :lvl,
        :ly => :lyd,
        :ma => :mad,
        :mac => :mop,
        :maf => :eur,
        :mar => :mad,
        :mc => :eur,
        :mco => :eur,
        :md => :mdl,
        :mda => :mdl,
        :mdg => :mga,
        :mdv => :mvr,
        :me => :eur,
        :mex => :mxn,
        :mf => :eur,
        :mg => :mga,
        :mh => :usd,
        :mhl => :usd,
        :mk => :mkd,
        :mkd => :mkd,
        :ml => :xof,
        :mli => :xof,
        :mlt => :eur,
        :mm => :mmk,
        :mmr => :mmk,
        :mn => :mnt,
        :mne => :eur,
        :mng => :mnt,
        :mnp => :usd,
        :mo => :mop,
        :moz => :mzn,
        :mp => :usd,
        :mq => :eur,
        :mr => :mro,
        :mrt => :mro,
        :ms => :xcd,
        :msr => :xcd,
        :mt => :eur,
        :mtq => :eur,
        :mu => :mur,
        :mus => :mur,
        :mv => :mvr,
        :mw => :mwk,
        :mwi => :mwk,
        :mx => :mxn,
        :my => :myr,
        :mys => :myr,
        :myt => :eur,
        :mz => :mzn,
        :na => :zar,
        :nam => :zar,
        :nc => :xpf,
        :ncl => :xpf,
        :ne => :xof,
        :ner => :xof,
        :nf => :aud,
        :nfk => :aud,
        :ng => :ngn,
        :nga => :ngn,
        :ni => :nio,
        :nic => :nio,
        :niu => :nzd,
        :nl => :eur,
        :nld => :eur,
        :no => :nok,
        :nor => :nok,
        :np => :npr,
        :npl => :npr,
        :nr => :aud,
        :nru => :aud,
        :nu => :nzd,
        :nz => :nzd,
        :nzl => :nzd,
        :om => :omr,
        :omn => :omr,
        :pa => :usd,
        :pak => :pkr,
        :pan => :usd,
        :pcn => :nzd,
        :pe => :pen,
        :per => :pen,
        :pf => :xpf,
        :pg => :pgk,
        :ph => :php,
        :phl => :php,
        :pk => :pkr,
        :pl => :pln,
        :plw => :usd,
        :pm => :eur,
        :pn => :nzd,
        :png => :pgk,
        :pol => :pln,
        :pr => :usd,
        :pri => :usd,
        :prk => :kpw,
        :prt => :eur,
        :pry => :pyg,
        :pt => :eur,
        :pw => :usd,
        :py => :pyg,
        :pyf => :xpf,
        :qa => :qar,
        :qat => :qar,
        :re => :eur,
        :reu => :eur,
        :ro => :ron,
        :rou => :ron,
        :rs => :rsd,
        :ru => :rub,
        :rus => :rub,
        :rw => :rwf,
        :rwa => :rwf,
        :sa => :sar,
        :sau => :sar,
        :sb => :sbd,
        :sc => :scr,
        :sd => :sdg,
        :sdn => :sdg,
        :se => :sek,
        :sen => :xof,
        :sg => :sgd,
        :sgp => :sgd,
        :sh => :shp,
        :shn => :shp,
        :si => :eur,
        :sj => :nok,
        :sjm => :nok,
        :sk => :eur,
        :sl => :sll,
        :slb => :sbd,
        :sle => :sll,
        :slv => :usd,
        :sm => :eur,
        :smr => :eur,
        :sn => :xof,
        :so => :sos,
        :som => :sos,
        :spm => :eur,
        :sr => :srd,
        :srb => :rsd,
        :ss => :ssp,
        :ssd => :ssp,
        :st => :std,
        :stp => :std,
        :sur => :srd,
        :sv => :usd,
        :svk => :eur,
        :svn => :eur,
        :swe => :sek,
        :swz => :szl,
        :sx => :ang,
        :sxm => :ang,
        :sy => :syp,
        :syc => :scr,
        :syr => :syp,
        :sz => :szl,
        :tc => :usd,
        :tca => :usd,
        :tcd => :xaf,
        :td => :xaf,
        :tf => :eur,
        :tg => :xof,
        :tgo => :xof,
        :th => :thb,
        :tha => :thb,
        :tj => :tjs,
        :tjk => :tjs,
        :tk => :nzd,
        :tkl => :nzd,
        :tkm => :tmt,
        :tl => :usd,
        :tls => :usd,
        :tm => :tmt,
        :tn => :tnd,
        :to => :top,
        :ton => :top,
        :tr => :try,
        :tt => :ttd,
        :tto => :ttd,
        :tun => :tnd,
        :tur => :try,
        :tuv => :aud,
        :tv => :aud,
        :tw => :twd,
        :twn => :twd,
        :tz => :tzs,
        :tza => :tzs,
        :ua => :uah,
        :ug => :ugx,
        :uga => :ugx,
        :ukr => :uah,
        :um => :usd,
        :umi => :usd,
        :ury => :uyu,
        :us => :usd,
        :usa => :usd,
        :uy => :uyu,
        :uz => :uzs,
        :uzb => :uzs,
        :va => :eur,
        :vat => :eur,
        :vc => :xcd,
        :vct => :xcd,
        :ve => :vef,
        :ven => :vef,
        :vg => :usd,
        :vgb => :usd,
        :vi => :usd,
        :vir => :usd,
        :vn => :vnd,
        :vnm => :vnd,
        :vu => :vuv,
        :vut => :vuv,
        :wf => :xpf,
        :wlf => :xpf,
        :ws => :wst,
        :wsm => :wst,
        :ye => :yer,
        :yem => :yer,
        :yt => :eur,
        :za => :zar,
        :zaf => :zar,
        :zm => :zmk,
        :zmb => :zmk,
        :zw => :zwl,
        :zwe => :zwl
      })
    end
  end
  describe "self.currencies" do
    it "should be an array of currency symbols" do
      expect(subject.currencies).to eq(%W(nio lak sar nok usd rub xcd omr amd cdf kpw cny kes khr pln mvr gtq clp inr bzd myr hkd cop dkk sek byr lyd ron dzd bif ars gip uyi bob ssp ngn pgk std xof aed ern mwk cup usn gmd cve tzs cou btn zwl ugx syp mad mnt lsl xaf shp htg rsd mga top mzn lvl fkp uss bwp hnl eur egp chf ils pyg lbp ang kzt gyd wst npr kmf thb irr srd jpy brl uyu mop bmd szl etb jod idr mdl xpf mro yer bam awg nzd pen aoa kyd sll try vef isk gnf bsd djf huf ltl mxn scr sgd lkr tjs tnd dop fjd gel sdg vuv bbd lrd krw mmk mur php zar kgs gbp bgn iqd tmt uah vnd zmk bov hrk ttd bhd clf rwf mkd aud crc pkr twd uzs czk azn bdt nad afn mxv cuc pab qar sos chw cad jmd bnd all svc sbd ghs kwd).sort.map(&:to_sym))
    end
  end
  describe "self.defines?" do
    context "with a defined currency" do
      it "should return true" do
        subject.currencies.each do |curr|
          expect(subject).to be_defines(curr)
        end
      end
    end
    context "with a defined country" do
      it "should return true" do
        subject.country_map.each do |country, currency|
          expect(subject).to be_defines(country)
        end
      end
    end
    context "with an undefined currency" do
      it "should return false" do
        expect(subject).not_to be_defines(:xxx)
      end
    end
  end
  describe "self.assert_currency" do
    context "with a currency" do
      it "should return the currency itself" do
        expect(subject.assert_currency!(:eur)).to eq(:eur)
      end
    end
    context "with a country" do
      it "should return the matching currency for the country" do
        expect(subject.assert_currency!(:de)).to eq(:eur)
      end
    end
    context "with a non-currency" do
      it "should raise an error" do
        expect { subject.assert_currency!(:xxx) }.to raise_error(Exchange::NoCurrencyError, "xxx is not a currency nor a country code matchable to a currency")
      end
    end
  end
  describe "self.instantiate" do
    context "given a float or an integer" do
      context "with bigger precision than the definition" do
        it "should instantiate a big decimal with the given precision" do
          expect(BigDecimal).to receive(:new).with('23.2345', 6).and_return('INSTANCE')
          expect(subject.instantiate(23.2345, :tnd)).to eq('INSTANCE')
          expect(BigDecimal).to receive(:new).with('22223.2323444', 12).and_return('INSTANCE')
          expect(subject.instantiate(22223.2323444, :sar)).to eq('INSTANCE')
          expect(BigDecimal).to receive(:new).with('23.23', 4).and_return('INSTANCE')
          expect(subject.instantiate(23.23, :clp)).to eq('INSTANCE')
        end
      end
      context "with smaller precision than the definition" do
        it "should instantiate a big decimal with the defined precision" do
          expect(BigDecimal).to receive(:new).with('23382343.1',11).and_return('INSTANCE')
          expect(subject.instantiate(23382343.1, :tnd)).to eq('INSTANCE')
          expect(BigDecimal).to receive(:new).with('23',4).and_return('INSTANCE')
          expect(subject.instantiate(23, :sar)).to eq('INSTANCE')
          expect(BigDecimal).to receive(:new).with('23.2',5).and_return('INSTANCE')
          expect(subject.instantiate(23.2, :omr)).to eq('INSTANCE')
        end
      end
    end
    context "given a float with scientific notation" do
      context "with bigger precision than the definition" do
        it "should instantiate a big decimal with the given precision" do
          expect(BigDecimal).to receive(:new).with("6.0e-05",6).and_return('INSTANCE')
          expect(subject.instantiate(6.0e-05, :tnd)).to eq('INSTANCE')
          expect(BigDecimal).to receive(:new).with("600000.0",8).and_return('INSTANCE')
          expect(subject.instantiate(6.0e05, :sar)).to eq('INSTANCE')
          expect(BigDecimal).to receive(:new).with("1.456e-08",12).and_return('INSTANCE')
          expect(subject.instantiate(1.456e-08, :omr)).to eq('INSTANCE')
          expect(BigDecimal).to receive(:new).with("145600000.0",12).and_return('INSTANCE')
          expect(subject.instantiate(1.456e08, :omr)).to eq('INSTANCE')
        end
      end
      context "with smaller precision than the definition" do
        it "should instantiate a big decimal with the defined precision" do
          expect(BigDecimal).to receive(:new).with("0.6",4).and_return('INSTANCE')
          expect(subject.instantiate(6.0e-01, :tnd)).to eq('INSTANCE')
          expect(BigDecimal).to receive(:new).with("60.0",4).and_return('INSTANCE')
          expect(subject.instantiate(6.0e01, :sar)).to eq('INSTANCE')
          expect(BigDecimal).to receive(:new).with("0.14",4).and_return('INSTANCE')
          expect(subject.instantiate(1.4e-01, :omr)).to eq('INSTANCE')
          expect(BigDecimal).to receive(:new).with("14.56",5).and_return('INSTANCE')
          expect(subject.instantiate(1.456e01, :omr)).to eq('INSTANCE')
        end
      end
    end
    context "given a big decimal" do
      let!(:bigdecimal) { BigDecimal.new("23.23") }
      it "should instantiate a big decimal according to the iso standards" do
        expect(BigDecimal).to receive(:new).never
        expect(subject.instantiate(bigdecimal, :tnd)).to eq(bigdecimal)
      end
    end
  end
  describe "self.round" do
    it "should round a currency according to ISO 4217 Definitions" do
      expect(subject.round(BigDecimal.new("23.232524"), :tnd)).to eq(BigDecimal.new("23.233"))
      expect(subject.round(BigDecimal.new("23.232524"), :sar)).to eq(BigDecimal.new("23.23"))
      expect(subject.round(BigDecimal.new("23.232524"), :clp)).to eq(BigDecimal.new("23"))
    end
    it "should round psychologically if asked" do
      expect(subject.round(BigDecimal.new("23.232524"), :tnd, nil, {:psych => true})).to eq(BigDecimal.new("22.999"))
      expect(subject.round(BigDecimal.new("23.232524"), :sar, nil, {:psych => true})).to eq(BigDecimal.new("22.99"))
      expect(subject.round(BigDecimal.new("23.232524"), :clp, nil, {:psych => true})).to eq(BigDecimal.new("19"))
    end
  end
  describe "self.ceil" do
    it "should ceil a currency according to ISO 4217 Definitions" do
      expect(subject.ceil(BigDecimal.new("23.232524"), :tnd)).to eq(BigDecimal.new("23.233"))
      expect(subject.ceil(BigDecimal.new("23.232524"), :sar)).to eq(BigDecimal.new("23.24"))
      expect(subject.ceil(BigDecimal.new("23.232524"), :clp)).to eq(BigDecimal.new("24"))
    end
    it "should ceil psychologically if asked" do
      expect(subject.ceil(BigDecimal.new("23.232524"), :tnd, nil, {:psych => true})).to eq(BigDecimal.new("23.999"))
      expect(subject.ceil(BigDecimal.new("23.232524"), :sar, nil, {:psych => true})).to eq(BigDecimal.new("23.99"))
      expect(subject.ceil(BigDecimal.new("23.232524"), :clp, nil, {:psych => true})).to eq(BigDecimal.new("29"))
    end
  end
  describe "self.floor" do
    it "should floor a currency according to ISO 4217 Definitions" do
      expect(subject.floor(BigDecimal.new("23.232524"), :tnd)).to eq(BigDecimal.new("23.232"))
      expect(subject.floor(BigDecimal.new("23.232524"), :sar)).to eq(BigDecimal.new("23.23"))
      expect(subject.floor(BigDecimal.new("23.232524"), :clp)).to eq(BigDecimal.new("23"))
    end
    it "should floor psychologically if asked" do
      expect(subject.floor(BigDecimal.new("23.232524"), :tnd, nil, {:psych => true})).to eq(BigDecimal.new("22.999"))
      expect(subject.floor(BigDecimal.new("23.232524"), :sar, nil, {:psych => true})).to eq(BigDecimal.new("22.99"))
      expect(subject.floor(BigDecimal.new("23.232524"), :clp, nil, {:psych => true})).to eq(BigDecimal.new("19"))
    end
  end
  describe "self.symbol" do
    context "with a symbol present" do
      it "should return the symbol" do
        expect(subject.symbol(:usd)).to eq('$')
        expect(subject.symbol(:gbp)).to eq('£')
        expect(subject.symbol(:eur)).to eq('€')
      end
    end
    context "with no symbol present" do
      it "should return nil" do
        expect(subject.symbol(:chf)).to be_nil
        expect(subject.symbol(:etb)).to be_nil
        expect(subject.symbol(:tnd)).to be_nil
      end
    end
  end
  describe "self.stringify" do
    it "should stringify a currency according to ISO 4217 Definitions" do
      expect(subject.stringify(BigDecimal.new("23234234.232524"), :tnd)).to eq("TND 23234234.233")
      expect(subject.stringify(BigDecimal.new("23234234.232524"), :sar)).to eq("SAR 23,234,234.23")
      expect(subject.stringify(BigDecimal.new("2323434223.232524"), :clp)).to eq("CLP 2.323.434.223")
      expect(subject.stringify(BigDecimal.new("232344.2"), :tnd)).to eq("TND 232344.200")
      expect(subject.stringify(BigDecimal.new("233432434.4"), :sar)).to eq("SAR 233,432,434.40")
      expect(subject.stringify(BigDecimal.new("23234234.0"), :clp)).to eq("CLP 23.234.234")
    end
    context "amount only" do
      it "should not render the currency" do
        expect(subject.stringify(BigDecimal.new("23.232524"), :tnd, :format => :amount)).to eq("23.233")
        expect(subject.stringify(BigDecimal.new("223423432343.232524"), :chf, :format => :amount)).to eq("223'423'432'343.23")
        expect(subject.stringify(BigDecimal.new("23.232524"), :clp, :format => :amount)).to eq("23")
        expect(subject.stringify(BigDecimal.new("23.2"), :tnd, :format => :amount)).to eq("23.200")
        expect(subject.stringify(BigDecimal.new("25645645663.4"), :sar, :format => :amount)).to eq("25,645,645,663.40")
        expect(subject.stringify(BigDecimal.new("23.0"), :clp, :format => :amount)).to eq("23")
      end
    end
    context "plain amount" do
      it "should not render the currency or separators" do
        expect(subject.stringify(BigDecimal.new("23.232524"), :tnd, :format => :plain)).to eq("23.233")
        expect(subject.stringify(BigDecimal.new("223423432343.232524"), :chf, :format => :plain)).to eq("223423432343.23")
        expect(subject.stringify(BigDecimal.new("23.232524"), :clp, :format => :plain)).to eq("23")
        expect(subject.stringify(BigDecimal.new("23.2"), :tnd, :format => :plain)).to eq("23.200")
        expect(subject.stringify(BigDecimal.new("25645645663.4"), :sar, :format => :plain)).to eq("25645645663.40")
        expect(subject.stringify(BigDecimal.new("23.0"), :clp, :format => :plain)).to eq("23")
      end
    end
    context "symbol" do
      context "with a symbol present" do
        it "should render a symbol for the currency" do
          expect(subject.stringify(BigDecimal.new("23.232524"), :usd, :format => :symbol)).to eq("$23.23")
          expect(subject.stringify(BigDecimal.new("23.232524"), :irr, :format => :symbol)).to eq("﷼23.23")
          expect(subject.stringify(BigDecimal.new("345543453453.232524"), :gbp, :format => :symbol)).to eq("£345,543,453,453.23")
          expect(subject.stringify(BigDecimal.new("23.232524"), :eur, :format => :symbol)).to eq("€23.23")
        end
      end
      context "without a symbol present" do
        it "should render the currency abbreviation" do
          expect(subject.stringify(BigDecimal.new("32741393.232524"), :chf, :format => :symbol)).to eq("CHF 32'741'393.23")
          expect(subject.stringify(BigDecimal.new("23.232524"), :etb, :format => :symbol)).to eq("ETB 23.23")
        end
      end
    end
  end
end
