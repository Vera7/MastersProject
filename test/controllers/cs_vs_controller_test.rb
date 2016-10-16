require 'test_helper'

class CsVsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @csv = csvs(:one)
  end

  test "should get index" do
    get csvs_url
    assert_response :success
  end

  test "should get new" do
    get new_csv_url
    assert_response :success
  end

  test "should create csv" do
    assert_difference('Csv.count') do
      post csvs_url, params: { csv: { cohort_cnt: @csv.cohort_cnt, diploma_rate: @csv.diploma_rate, disability_flag: @csv.disability_flag, disadvantaged_flag: @csv.disadvantaged_flag, div_name: @csv.div_name, div_num: @csv.div_num, dropout_rate: @csv.dropout_rate, federal_race_code: @csv.federal_race_code, gender: @csv.gender, lep_flag: @csv.lep_flag, level_code: @csv.level_code, sch_name: @csv.sch_name, sch_num: @csv.sch_num, school_year: @csv.school_year } }
    end

    assert_redirected_to csv_url(Csv.last)
  end

  test "should show csv" do
    get csv_url(@csv)
    assert_response :success
  end

  test "should get edit" do
    get edit_csv_url(@csv)
    assert_response :success
  end

  test "should update csv" do
    patch csv_url(@csv), params: { csv: { cohort_cnt: @csv.cohort_cnt, diploma_rate: @csv.diploma_rate, disability_flag: @csv.disability_flag, disadvantaged_flag: @csv.disadvantaged_flag, div_name: @csv.div_name, div_num: @csv.div_num, dropout_rate: @csv.dropout_rate, federal_race_code: @csv.federal_race_code, gender: @csv.gender, lep_flag: @csv.lep_flag, level_code: @csv.level_code, sch_name: @csv.sch_name, sch_num: @csv.sch_num, school_year: @csv.school_year } }
    assert_redirected_to csv_url(@csv)
  end

  test "should destroy csv" do
    assert_difference('Csv.count', -1) do
      delete csv_url(@csv)
    end

    assert_redirected_to csvs_url
  end
end
