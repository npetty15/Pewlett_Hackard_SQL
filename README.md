# Pewlett Hackard Retirement Analysis with SQL

![image](https://user-images.githubusercontent.com/100856534/166555051-b8d72a44-5dda-41b0-a18f-40cbf58ccd64.png)

## Purpose of Analysis

Pewlett-Hackard (PH) may have an issue of its employees all retiring around the same time. The company has dubbed this the "silver tsunami" as upon initial review it looks like PH could have close to 40k employees all retiring around the same time. 

Additional review has been requested to look into this issue further. 
- Number of Potential Retirees via Title
- Develop a Mentorship Report Based on Experience

Creating these new reports will aid PH in determining which areas will be hardest hit, which employees will most likely retire soon, and see who can help aid in training in the new employees that will be hired through mentorship. 

## Results of Additional Review

### Retiring Employees by Title Report

Management asked me to pull together a report that showed all employees born between 1/1/1952 and 12/31/1955 and their current titles. This age range, presumably, would be the employees more likely to retire sooner than other age ranges. 

The code shown below, allows me to pull in employees and their titles.

![code_retirement_titles](https://user-images.githubusercontent.com/100856534/166555991-83494e11-1ff2-489b-b30a-215103aa6eae.png)

The above code produced a report called "retirement_titles." Below is a summary of this. As you can see this shows all employees and their titles. As you can also see this report needed to be refined a little further, as this report shows every position that the employee has held. For example, Christian Koblick is shown twice. A unique list needed to be created to show what each employees current position is.

![retirement_titles](https://user-images.githubusercontent.com/100856534/166555534-bac9937c-1c49-4ef6-90db-f976f6ad0217.png)

**Further Refined List of Potential Retirees**

The code below further improves upon the "retirement_titles" report by displaying only the current position for each employee. This was done by setting the to_date to 9999-01-01, which is used as the place holder for current employees. 

![code_unique_titles](https://user-images.githubusercontent.com/100856534/166556563-1459cae6-cbff-41d0-ba89-11b20b15bd78.png)

![unique_titles](https://user-images.githubusercontent.com/100856534/166556594-d026c027-f719-4d94-b932-9e1b50ecf202.png)

The above report is created under "unique_titles." 

**Retiring Titles by Count**

The last report that I produced for this part of the review was pulling together the count of employees that could retire by their job title. Doing show would show to management what positions would be hit the hardest. 

![code_retiring_titles](https://user-images.githubusercontent.com/100856534/166556887-1776910e-aa83-4ffb-b820-b88ade4e3b58.png)

![retiring_titles](https://user-images.githubusercontent.com/100856534/166556909-c04a6c8a-df49-4227-b440-e0a772fd774d.png)

#### Results of Employees by Title Reporting
1) The potential staff for PH that could retire soon is shown to be close to 72k employees, upon review of the "unique_titles" report.
    - It was beneficial to further refine the "retirement_titles" report as this had close to $133k employees retiring. However, this had duplicate employees as it showed all positions an employee has held while at PH. 
2) Of that staff two positions are going to be hit more so than others.
    - Senior Engineers
    - Senior Staff

### Mentorship Eligibility Report

Management wanted an additional report created to show individuals who were born in 1965 (January to December) to see who would be available for a mentorship program. This would help assist in training the future employees of PH for successful transitions. 

Below is the code used to pull the data. As you can see, this pulls the currently employed individuals with a birthdate during 1965

![code_mentorship_eligibility](https://user-images.githubusercontent.com/100856534/166557578-87ca8cbb-6b73-465c-b9b8-928bb075f3cd.png)

![mentorship_eligibility](https://user-images.githubusercontent.com/100856534/166557604-3f6a7d41-7011-4c07-9956-ccb357f2b0e2.png)

#### Results of Mentorship Report
1) The employees that are currently employed at PH and born within 1965 totals to be 1,549 individuals
2) What is also shown on this report are what positions these individuals are currently in. Of the positions at PH, 6 are present in the "mentorship_eligibility" report.
    - Senior Staff: 418 
    - Engineer: 407
    - Staff: 306
    - Senior Engineer: 283
    - Technique Leader: 77
    - Assistant Engineer: 58
3) Both senior staff and engineers will ahve the greatest impact in the mentorship program

## Summary of Retirement Report

1) How many roles will need to be filled as the "silver tsunami" begins to make an impact?
    - Close to 72,000 roles will need to be replaced once the "silver tsunami" begins.

2) Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
    - Depending on how the mentorship program is set up there would not be enough individuals eligible to do a one-on-one relationship. A group mentorship program may be the best way to move forward. 
