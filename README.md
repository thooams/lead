# Lead Test

## Introduction

The overall lead test idea is to assess **the applicant ability to improve/maintain a global codebase in a given product, business and team context** rather than specifically assess his/her rails or react proficiency.

The main steps of the test are:
- Understand a business/product context
- Understand a product feature new request
- Perform a full diagnosis of the current code base, suggest changes and prioritize them
- Implement principles must-have changes and initiate the new feature
- Plan next steps / stories in the team

## Context

### Description

Here is the context: you're working in an AdTech company providing the influence marketing environement with 2 solutions:

- BOÔ

BOÔ is an influencer marketing platform for brand and creative influencers. Brands can manage influence marketing campaigns by engaging with creative influencers registered on the app. The focus here is on brand content creation and micro/macro influence (influencers with more than 5K followers).
![BOÔ](/feature/boo.png)

- FOÔ

FOÔ is an influencer marketing platform for brand and consumers. Brands can directly engaged with "real" consumers, send them samples of their products in return of reviews and social network publications. The focus here is about "real" consumer experience.
![FOÔ](/feature/foo.png)

### Limits

- For test reasons, only a limited amounts of features has been developped on the provided BOÔ and FOÔ apps. You have to consider the rest of the main features already developed even if they're not present in the repos.
- For test reasons, the codebase of BOÔ and FOÔ is particularly **poor**, you can see it as either a very first junior MVP iteration or just 💩 code for test purpose.

### Remarks

The context is obviously greatly inspired from the WOÔ product/business context... but don't panick ! the codebase is not that bad in real life 😅 !

## A new feature

The product team has came up with a new idea: **providing detailed statistics for influencer and consumer user about them and about other registered users**. The idea was originally thought for the BOÔ app but eventually it sounded relevant to add it both on FOÔ and BOÔ.

The following mockups have been prepared by the product team, they describe how this new feature should be used/implemented.

- Mockup of the detailed view

![Full Mockup](/feature/modale_thomas.png)


- UX on BOÔ

![BOÔ Implementation](/feature/boo_feature_gif.gif)



- UX on FOÔ

![FOÔ Implementation](/feature/foo_feature_gif.gif)


At this stage, a junior dev has started playing around with the [Facebook Instagram API](https://developers.facebook.com/docs/instagram-api/). **He/She managed to implement a really basic script to get all the posts of the current user or of a given user_name.** This can be found on the FOÔ app directly in the PagesController.

## Instructions

Here are your instructions:
- Perform a thorough **diagnosis of the codebases**
- **Implement** the top 3 must-have changes of your list and initiate the new feature **in React for the frontend side**
- **Plan** the rest of the work

### Diagnosis of the codebases

Perform a thorough diagnosis of the codebases, prepare a prioritized list of fix/reafcto/changes/additions that should be implemented. **Exhaustivity** is important here, list what you consider "small" bugs/problems as well as deeper changes. **There's no limit to your analysis**, just keep in mind the product/business context and don't forget to prioritize your list

### Implementation

**Implement the top 3 must-have changes of your list.**

**Note**: Don't spend too much times on it, if one of your suggestions has impact on lots of part of the codebases, juste pick some of these parts to demonstrate the change.

You also have to initiate the implementation of the new feature in React. Here is a light version of the feature 👇
![Light Mockup](/feature/light_modale_thomas.png)

And here are some requirements:
- As a user, I can access my detailed view
- As a user, I can access a detailed view of others identities of the app
- As a user, I can load the view as a modal (or whatever UI Component) and I can share the url
- The view should be accessible both from BOÔ and FOÔ

### Planning the rest of the work

Let say your team is composed as follow:
- Developper A has 4/5 years xp in JS, 2 years xp in RubyOnRails
- Developper B has 2 years xp as fullstack Ruby On Rails / React
- Developper C is Junior in React

Prepare a 2 weeks sprint to carry on tasks among your prioritized list and finish the feature request. You may describe your sprint as a list of stories/features associated to each developper.

### Notes / Remarks / Out of Scope

- Merging BOÔ and FOÔ in a single new app is out of scope (even if it might make sense !) but other than that **you're free to suggest anything**
- The two apps use a "component" approach of rails partial, its gives a React flavour to "classic" erb partial (see Apps readme for reference and details). This structure is a constraint, "re-configuring" it is out of scope
- Don't spend to much time on finition, once again, **the idea is to assess your ability to plan work, prioritize tech features and architecture them.**


## Prerequisites

Prior to everything **you'll need a creator instagram account**. If you're not an instgram influencer _(it's ok, we're not 😉)_, you'll have to create an account for the test _(you can destroy it after !)_. Here is the step by step:

- Have or create an [Instagram account as a Creator or Professional](https://help.instagram.com/2358103564437429)
- Make sure to [associate a Facebook Page to your Instagram Account](https://www.yoo.paris/assets/create_fb_page-cad857d0a2fce18e3873c7fe89add61c54c1ecdee64a41f2c4fb95a5b79ad679.gif) _(you can create a dumb one, it won't interfere with your fb profile)_
- Ask @thomasertorio to be added as a user on BOÔ and FOÔ Facebook Apps by sending him your facebook id (`https://www.facebook.com/`**`user_id`** as in `https://www.facebook.com/thomas.sertorio`)
- When connecting to BOÔ or FOÔ through Facebook make sure to select only one instagram and facebook pages _(in case you had several)_
