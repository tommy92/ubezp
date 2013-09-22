class Customer < ActiveRecord::Base
	attr_accessible :id, :imie, :nazwisko, :ulica, :numer_domu, :miasto, :kod_pocztowy, :nr_tel, :rodzaj_ubezp, :nazwa_firmy, :skladka_cala, :nr_polisy,
									:okres_od, :okres_do, :rata_1, :rata_2, :rata_3, :rata_4, :rata_2_data, :rata_3_data, :rata_4_data

	validates :id, :presence => true
	validates :imie, :presence => true
	validates :nazwisko, :presence => true
	validates :ulica, :presence => true
	validates :numer_domu, :presence => true
	validates :miasto, :presence => true
	# validates :kod_pocztowy  # REGEX VALIDATION
	validates :rodzaj_ubezp, :presence => true
	validates :nazwa_firmy, :presence => true
	validates :skladka_cala, :presence => true
end