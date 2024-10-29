# Course Catalog SQL Analysis

## Overview
This repository contains SQL analysis projects focused on a course catalog dataset from LinkedIn Learning. The dataset includes 8,558 courses with detailed metadata, covering a variety of creative and technical subjects. The objective of this project is to explore and analyze patterns in online learning over the past two decades, highlighting trends in course topics, skills, release patterns, and content lifecycle.

## Dataset Description
The dataset includes:
- **8,558 courses** from LinkedIn Learning (formerly Lynda.com).
- Metadata for each course, such as **author**, **release date**, **last updated date**, **skill level**, **topics**, **skills covered**, and **status** (e.g., active or retired).
- Collected using API-based scraping, sourced from [Kaggle](https://www.kaggle.com), contributed by Azrai Mohamad.

### Key Fields:
- **Course ID**: Unique identifier.
- **Course Title**: Title of the course.
- **Release Date** and **Last Updated Date**.
- **Level**: Beginner, Intermediate, or Advanced.
- **Category**, **Subject**, **Topic**, and **Skill** metadata.
- **Status**: Active or Retired.

## Analysis Objectives
This project explores several key questions related to online course offerings, release patterns, and trends. Each analysis is conducted through dedicated SQL scripts found in the `analysis/` folder.

1. **Release Date Patterns Analysis**:
   - Identify common course release patterns and the busiest release dates.

2. **Course Update Frequency**:
   - Calculate how often courses are updated and find categories that undergo frequent updates.

3. **Retirement Pattern Analysis**:
   - Examine patterns in course retirements and common retirement dates.

4. **Popular Course Topics Over Time**:
   - Track trends in course topics to see how focus areas have changed over time.

5. **Skill Evolution Analysis**:
   - Analyze the evolution of popular skills, including emerging and declining skill sets.

6. **Course Lifespan Analysis**:
   - Calculate the average lifespan of courses by category, providing insights into longevity trends.

7. **Learning Level Analysis by Skill**:
   - Discover which skills are primarily offered at different learning levels.


## Folder Structure
Each project is organized in separate folders to improve readability and modularity.
