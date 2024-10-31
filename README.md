# Course Catalog SQL Analysis

## Overview
This repository contains SQL analyses on a LinkedIn Learning course catalog dataset with 8,558 courses. The goal is to uncover patterns in online learning trends, skill demands, and content lifecycle over the past two decades.

## Dataset
- **Source**: [LinkedIn Learning Course Catalog Dataset on Kaggle](https://www.kaggle.com/datasets/azraimohamad/linkedin-learning-lynda-course-catalog) (contributed by Azrai Mohamad)
- **Fields**: Course ID, Title, Release & Last Updated Dates, Level, Category, Subject, Skills, Status (Active/Retired)

## Analysis Overview
This project addresses various questions about course offerings, release patterns, and skill trends using SQL.

### Analysis Objectives

1. **Lifespan Trends**
   - **Question**: Do "Creative" and "Technology" courses differ in lifespan?
   - **Method**: Calculates average lifespan in days for courses in each category.
   - **Insight**: Creative courses generally have a longer lifespan than Technology courses, indicating that creative content may stay relevant for longer.

![image](https://github.com/user-attachments/assets/2b88816a-a2ef-4d3f-951a-38248eeecf88)


2. **Release Date Patterns**
   - **Question**: Are there specific months or quarters with higher course releases?
   - **Method**: Counts releases by month and by quarter.
   - **Insight**: June (6) has the highest course releases with a count of 262, followed by May (5) and April (4), each with over 250 releases. This suggests that late spring to early summer is a peak period for course releases.
   - December (12) has the lowest course release count (174), followed by November (11) and February (2). This might suggest a slowdown in releases at the end of the year, potentially due to holiday seasons, with fewer new courses being launched in the winter months.
     
![image](https://github.com/user-attachments/assets/a3333b5b-b1c2-4c34-8bf6-24da05b07fce)


3. **Popular Skills**
   - **Question**: What are the top 5 most frequently mentioned skills?
   - **Method**: Splits comma-separated skills, and counts occurrences.
   - **Insight**: The top skills include Adobe Photoshop, Video Editing, and Front-End Development, reflecting high-demand areas within the course catalog.
  
   - ![image](https://github.com/user-attachments/assets/9b9fd371-d3af-42b9-ba7b-a1bcf42606ab)


4. **Yearly Releases & Retirements**
   - **Question**: How many courses were released and retired each year?
   - **Method**: Calculates yearly counts of released and retired courses.
   - **Insight**: There's a steady increase in course releases over the years, with a significant spike in retirements starting in 2014, peaking dramatically in 2017.
  
   - ![image](https://github.com/user-attachments/assets/ea5182a5-0ba3-486e-b705-2f0bbba157ac)


5. **Longest Update Gap**
   - **Question**: Which courses have the longest gap between the release and the last update?
   - **Method**: Calculates time difference between release and last update, ranks top gaps.
   - **Insight**: Courses with very long update gaps might need continuous monitoring to ensure they align with current industry standards and learning expectations, especially for fast-evolving topics like web design and animation tools.
  
   - ![image](https://github.com/user-attachments/assets/7c90f879-c9e5-4e6d-8ab0-ec04fc4ee42b)


## Folder Structure
- **analysis/**: SQL scripts for each analysis objective
- **data/**: Placeholder for dataset files (if applicable)
- **README.md**: Project overview and usage instructions

## Usage
1. **Setup**: Load the dataset in a MySQL-compatible environment.
2. **Run Queries**: Use the SQL scripts in the `analysis/` folder to generate insights.
3. **Interpret Results**: Each query provides insights into different aspects of the course catalog, from release patterns to popular skills.
