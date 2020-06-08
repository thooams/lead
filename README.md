# Lead Test

## Introduction

The overall lead test idea is to assess **your ability to improve/maintain a global codebase in a given product, business and team context** rather than specifically assess your rails or react proficiency.

The main steps of the test are:
- Understand a business/product context
- Understand a product feature new request
- Perform a full diagnosis of the current codebase, suggest changes and prioritize them
- Initiate the implementation of a new feature
- Plan next steps / stories in the team

## Context

### Description

Here is the context: you're working in an AdTech company providing the influence marketing environement with 2 solutions:

- BOÔ

BOÔ is an influencer marketing platform for brand and creative influencers. Brands can manage influence marketing campaigns by engaging with creative influencers registered on the app. The focus here is on brand content creation and micro/macro influence (influencers with more than 5K followers).
![BOÔ](/instruction_assets/boo.png)

- FOÔ

FOÔ is an influencer marketing platform for brand and consumers. Brands can directly engaged with "real" consumers, send them samples of their products in return of reviews and social network publications. The focus here is about "real" consumer experience.
![FOÔ](/instruction_assets/foo.png)

### Limits

- For test reasons, only a limited amounts of features has been developped on the provided BOÔ and FOÔ apps.
- For test reasons, the codebase of BOÔ and FOÔ is particularly **poor**, you can see it as either a very first junior MVP iteration or just 💩 code for test purpose.

### Remarks

The context is obviously greatly inspired from the WOÔ product/business context... but don't panick ! the codebase is not that bad in real life 😅 !

## A new feature

The product team has came up with a new idea: **providing detailed statistics for influencer and consumer user about them and about other registered users**. The idea was originally thought for the BOÔ app but eventually it sounded relevant to add it both on FOÔ and BOÔ.

The following mockups have been prepared by the product team, they describe how this new feature should be used/implemented.

- Mockup of the detailed view

![Full Mockup](/instruction_assets/modale_thomas.png)


- UX on BOÔ

![BOÔ Implementation](/instruction_assets/boo_feature_gif.gif)



- UX on FOÔ

![FOÔ Implementation](/instruction_assets/foo_feature_gif.gif)


At this stage, a junior dev has started playing around with the [Facebook Instagram API](https://developers.facebook.com/docs/instagram-api/). **He/She managed to implement a really basic script to get all the posts of the current user or of a given user_name.** This can be found on the FOÔ app directly in the PagesController.

## Instructions

Here are your instructions:
- Perform a thorough **diagnosis of the codebases** _(BOÔ and FOÔ)_
- Initiate the implementation of the new feature in **React** for the frontend side
- **Plan** the rest of the work

### Diagnosis of the codebases

Perform a thorough diagnosis of the codebases _(BOÔ and FOÔ)_, prepare a prioritized list of fix/reafcto/changes/additions that should be implemented. **Exhaustivity** is important here, list what you consider "small" bugs/problems as well as deeper changes. **There's no limit to your analysis**, just keep in mind the product/business context and don't forget to prioritize your list.

**In terms of deliverables**, you're free. We think a PR on a fork can be a good approach: you could add comments, pseudo-code, etc and present your prioritzed list as the top description of the PR. But you're free to come up with something different.

### Implementation

You won't have time to implement the full new feature, so here is a lighter version of the view to implement 👇
![Light Mockup](/instruction_assets/light_modale_thomas.png)

And here are some requirements:
- As a user, I can access my detailed view
- As a user, I can access a detailed view of others identities of the app
- As a user, I can load the view as a modal _(or whatever UI Component)_ and I can share the url. A signed in person who will used the shared url will be able to open the page directly with the modal _(or whathever UI component)_ opened
- The view should be accessible both from BOÔ and FOÔ
- The view is used in Desktop, don't spend time on mobile/responsiveness

**In terms of deliverable**, once again your're free but we should be able to either easily checkout something locally or test it online and we should be able to review the produced code.

### Planning the rest of the work

Let say your team is composed as follow:
- Developper A has 4/5 years xp in JS, 2 years xp in RubyOnRails
- Developper B has 2 years xp as fullstack Ruby On Rails / React
- Developper C is Junior in React, 1 year xp in RubyOnRails
- ... and you !

Prepare a 2 weeks sprint to carry on tasks among:
- your prioritized list
- the new feature in its full version

You may describe your sprint as a list of stories/features associated to each developper. Assigning features to everyone is not mandatory at all, proceed as you feel relevant to share the work and plan the sprint.

**In termes of deliverable**, you're free 😅. A markdown list, a GitHub project, whatever feels relevant and not time consuming.

### Notes / Remarks / Out of Scope

- Merging BOÔ and FOÔ in a single new app is out of scope _(even if it might make sense !)_ but other than that **you're free to suggest anything !**
- The two apps use a "component" approach of rails partial, its gives a React flavour to "classic" erb partials _(see Apps readmes for reference and details)_. This structure is a constraint, "re-configuring" it is out of scope
- Don't spend to much time on finition, once again, **the idea is to assess your ability to plan work, prioritize tech features and architecture them.**


## Prerequisites and getting started

Prior to everything **you'll need a creator instagram account**. If you're not an instgram influencer _(it's ok, we're not 😉)_, you'll have to create an account for the test _(you can destroy it after !)_. Here is the step by step:

- Have or create an [Instagram account as a Creator or Professional](https://help.instagram.com/2358103564437429)
- Make sure to [associate a Facebook Page to your Instagram Account](https://www.yoo.paris/assets/create_fb_page-cad857d0a2fce18e3873c7fe89add61c54c1ecdee64a41f2c4fb95a5b79ad679.gif) _(you can create a dumb one, it won't interfere with your fb profile)_
- Ask @thomasertorio to be added as a user on BOÔ and FOÔ Facebook Apps by sending him your facebook id (`https://www.facebook.com/`**`user_id`** as in `https://www.facebook.com/thomas.sertorio`)
- When connecting to BOÔ or FOÔ through Facebook make sure to select only one instagram and facebook pages _(in case you had several)_

In terms of getting started with BOÔ and FOÔ:
- The `/foo` folder contains a basic Rails 6 app with its own Readme
- The `/boo` folder contains a basic Rails 6 app with its own Readme
- FOÔ and BOÔ use [Rails Credentials](https://guides.rubyonrails.org/security.html#custom-credentials) to store secret ENV variables. You'll just need to add a `master.key` at the root of each `/config` folder.
- The `/instruction_assets` folder is just holding images of this Readme
