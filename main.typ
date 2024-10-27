#import "template.typ": *
#import "@preview/oasis-align:0.1.0": *
#import "@preview/wrap-it:0.1.0": wrap-content
#import "callouts.typ": *
// #import "@preview/babble-bubbles:0.1.0": *


#show: project.with(
  title: "How to Make a Model Boat in Onshape", // make, model, version + procedure + context
  authors: "Jason Daniel Pieck",
  affiliations: "UWP 102E A03"
  
)

/** 
- 4 to 5 whole pages
- 8 to 15 steps (should be linear and non-branching)
- Technical procedure to someone with 0 background knowledge
- can be chapter of manual 
**/

= Introduction
/*
- hook: someone without background to do x (what this is about )
  - make, model, version, procedure, context, no background, knowledge
- X should be particular
- about 1.5 pages
- context
*/
// story: give me a tour of the place, and then Im ready to start


Ahoy there, and welcome to Cyclone RobSub! 
// We are thrilled to have you with us!

As part of the team's training regimen, you and your team will be asked to design, model, assemble, wire, and program a small model boat. This document aims to familiarize you with the fundamentals of computer aided design (CAD) in Onshape. No prior experience in any CAD software is required to follow along. By the end of the tutorial, you will have created a model boat like the one seen in @overview.
//  that you and your team are encouraged to build off of.


#figure(image("images/overview.png"), caption: []) <overview>
//highlight


== Overview of Onshape's User Interface
Looking closer at @overview, Box 1 contains the the "Graphics Area" in which you view and edit your model. Select a part of the model to see a corresponding "Feature" highlighted in the "Feature List" in Box 2. The "Feature List" keeps a history of every operation performed, allowing you to go back and make changes to earlier states of the model. To add to features to the "Feature List," select actions on the "Toolbar" in Box 3. Selecting a tool will open a "Dialog Window" as seen in Box 4 and houses the parameters to modify the current operation. To see how tools affect your design, click on the "View Finder" in Box 5 to change your view angle. 


== Tools & Materials
// Teach the reader terms and concepts to do steps
// Where do I get this stuff
// visual should be of tools/equipment 


As mentioned before, this tutorial utilizes the CAD software "Onshape". Before beginning this tutorial, create an account at #link("https://www.onshape.com/en/education")[onshape.com/en/education]. Using this link gives you access to the free education version of Onshape. 

#note[You can follow this tutorial in a different CAD Software. While the user interfaces differ, this tutorial utilizes conventional operations that are common to all CAD software.]

== Roadmap
// Roadmap sentence: 3 main elements of the procedure
We will start by making the basic shape of a boat, and then slowly carve away at it to refine its geometry that so that it can be propelled cleanly through the water. 
// Throughout the tutorial 


== Warnings
CAD's power manifests in the wide verity of ways that modeling challenges can be approached. Consequently, this tutorial cannot be fully comprehensive and will only focus on one method to achieve the desired shape. If you are interested in alternatives, I highly recommend you check out the wider verity of resources available online.


= Procedure
/** 
Options:
- Tabular: text on one side of table, image on the other
  - images should be dynamic (images of action)
- Freeform: whatever goes
  - careful about getting readers lost
- Combo

Make sure that steps are:
- Command form ("Do this")
- include supplementary explanations
**/

// #box(image("images/sketch-button.png"))
// #figure(image("images/sketch.png"), caption: []) <sketch>])

== 1 - Starting Your first Sketch
#oasis-align(int-dir: -1, 
[The first thing that we need to do whenever making a model in CAD is making a sketch. 
// A sketch is a 2D stucture that exists on a plane. 
To make your first sketch, click the #icon("sketch") `Sketch` button on the left side of the tool bar. 

Onshape will then prompt you to select a plane. Select the top plane by either clicking on the plane in the view-window or on the feature tree as seen in @select-plane.
],
[#figure(image("images/select-plane.png"), caption: []) <select-plane>
])
It is best practice to be looking directly at the plane you are working on, so navigate to the view-finder at the top right of the screen and click on the `Top` surface. This will reorient your view-window such that you now face the top plane directly head on. 
// [#figure(image("images/view-finder.png"), caption: []) <view-finder>
// ])
== 2 - Sketching base of the boat contour

#oasis-align([Select the #icon("center-rect") `Center point rectangle` tool from the rectangle tools dropdown as seen in @rect-tool. After selecting, your tool should change in a cross-hair shaped like a plus sign.


Click on the origin point and then move your mouse outwards as seen in @rect-sketch. At this point in time, it does not matter how far out you go, nor that the numbers that you see in @rect-sketch match your own. \ ],

[#figure(image("images/rect-tool.png"), caption: []) <rect-tool>
])

#oasis-align([#figure(image("images/rect-sketch.png"), caption: [], ) <rect-sketch>
],
[#warning[Failing to select the origin point when starting the sketch will result an under-defined sketch that does not align with the default geometry of the model. 
// This can cause issues later down the line in more complex models, and should be avoided whenever possible.
]

Now that we have shape, we can add dimensions. Select the #icon("dim") `Dimension` tool from the right side of the toolbar. Your mouse should once again change to a cross-hair. Click on the left side of the rectangle, and then click off to the side as seen in @rect-dim.])



#oasis-align(int-dir: -1,
  [Instead of adding another dimension, create #icon("equal") `Equal`between two perpendicular sides of the rectangle. While selecting, hold `Shift` on your keyboard select #icon("equal") `Equal` as show in @rect-equal. Now if we change the dimension set earlier, all sides of the square will change size automatically. 
  ],
  [#oasis-align(
    [#figure(image("images/rect-dim.png"), caption: []) <rect-dim>],
    [#figure(image("images/rect-equal.png"), caption: []) <rect-equal>
  ])]
)

== 3 - Sketching the front of the boat contour 

Using the #icon("circle") `Circle` tool, add two circle to your the top corners of your sketch as seen in @double-circle. When selecting the size of the circle, line up your cursor with the opposite opposite sided corner. As you get close, the line will change colors to orange and the icon for #icon("tangent") `Tangent` will appear. The icon signifies that Onshape is automatically adding a relation to the sketch. If done correctly, the circle will appear black in color. 

Select the cutting tool, and click and drag your mouse of the sections of the circle as signified in @trim-tool. Once you are finished, your sketch should look like @finish-boat-contour. Select the green check mark, and your sketch is finished!

#oasis-align([#oasis-align([#figure(image("images/double-circle.png"), caption: []) <double-circle>
],[#figure(image("images/trim-tool.png"), caption: []) <trim-tool>])],
[#figure(image("images/finish-boat-contour.png"), caption: []) <finish-boat-contour>])

#tip[The trim tool is a great way to remove unwanted geometry from a sketch.]

== 4 - Extruding the Sketch

#oasis-align(int-dir:-1,[Now that we hae a sketch, we can "extrude" it to make it three-dimensional. Click the #icon("extrude") `Extrude` button in toolbar @extrude-contour.
// next to the `Sketch` button, 
and then select the face of sketch 1 as shown in . As in Step 1, you can either click on the face in the graphics area or on the feature list. Set the `Depth` of the extrude to 2in and click the check mark. If you reorient your part, it should now look like @boat-base-done
],
oasis-align([#figure(image("images/extrude-contour.png"), caption: []) <extrude-contour>
], [#figure(image("images/boat-base-done.png"), caption: []) <boat-base-done>]))

== 5 - Adding a sketch to non-planar geometry
#oasis-align([We want the front of the boat to curve up. Create another `Sketch`, this time clicking on the flat surface side surface of the boat as seen in @side-plane. 

#note[Onshape will not allow you to built a sketch on a curved surface. As a result, we need to built a sketch that is offset from the surface]
],
[#figure(image("images/side-plane.png"), caption: []) <side-plane>],)

Looking at the tipped end of the boat, add a spline using the `Spline` tool. Start at the bottom left of the curve-start, and then go to somewhere above the top of the boat as in @coincident. To cancel a third spline point, press `Esc` on your keyboard. While holding `Shift`, click on the end point of the spline and the tip of the boat, and then add a relation called `Coincident`. This will force the two points to overlap. 

Add another `Coincident` relationship, this time between the spline control node and the closest edge of the boat as seen in @spline-align. The nodes should be stuck to their respective lines. Drag each not to a position that gives you a shape to your liking similar to @spline-drag.

#oasis-align(
  [#figure(image("images/coincident.png"), caption: []) <coincident>],
  oasis-align(
    [#figure(image("images/spline-align.png"), caption: []) <spline-align>],
    [#figure(image("images/spline-drag.png"), caption: []) <spline-drag>],
))

#oasis-align(
[Compelete the sketch by using the `Line` tool to draw two lines and close the shape of the spline. If the sketch is successfully closed it will look like @complete-sketch. Exit the sketch, and make another extrude. This time, select `Remove`, and change the end condition from `Bind` to `Through all`. 

#figure(image("images/complete-sketch.png"), caption: []) <complete-sketch>
], 
[#figure(image("images/extrude-remove.png"), caption: []) <extrude-remove>]
)

== 6 - Shaping the bottom of the hull
#oasis-align([Create another sketch, this time on the flat back side of the boat. First create a center line using the `Line` tool by aligning with the top and bottom midpoints of the hull. Make this line a construction line by clicking the `Construction` tool. 

Next, using the `Spline` tool, create an arc same similar to @bottom-spline. Here, the nodes do not need to be precisely aligned, and you are encouraged to experiment with different shapes. 
], 
warning[When making the spline, make sure the endpoints don't terminate at a corner of the hull.This is to allow for the use of "imprinting" when extruding the sketch.])

Next, click the `Mirror` tool to mirror the spline across the centerline you created earlier. Onshape will prompt you for the order in which objects should be selected. The final result will look like @mirror, and any future adjustments will keep both sides identical. 


#oasis-align(
[#figure(image("images/bottom-spline.png"), caption: []) <bottom-spline>], 
[#figure(image("images/mirror.png"), caption: []) <mirror>]
)

== 7 - Rounding the corners
#oasis-align(int-dir:-1, [Select the `Fillet` tool from the tool bar, and select the top two arcs found at the front of the ship. In the dialog box, set the `Radius` to `1.9 in`,  Notice that the curve propagates to the rest of the hull as seen in @fillet.

#warning[Setting the `Radius` to the height of the boat will result in the fillet failing. 
Therefore, we make the `Radius` 0.1in less than the height of the ship.
//  This is because of the geometry we created at the tip of the boat. 
 ]
], 
[#figure(image("images/fillet.png"), caption: []) <fillet> ])

== 8 - Hollowing out the hull
#oasis-align(int-dir: -1,
[#figure(image("images/shell.png"), caption: []), <shell>],  
[Now that we have shaped the exterior of the hull, we can use the `Shell` tool to carve out its interior. Select the `Shell` tool from the tool bar and click on the top surface of the boat. A preview of the feature should appear in the graphics area as seen in #link("lol")[Figure 21]. Set the `Shell thickness` to `0.25in`. 

#tip[The resulting geometry of the hull interior is not ideal for placing electronics. Therefore, consider adding additional features to create a flat surface. ]
])

= Conclusion
#oasis-align([Congratulations! You have just finished making a model boat in Onshape! This model is a great base for any boat design, but needs to be expanded on to be viable for competition. Consider adding cutouts for your motors and propellers, and try to find ways to protect your electronics from getting splashed with water. Try an think of other ways that a boat can be modeled. Thanks for following along, and se you at the next meeting!], 
success(title: [Learned Skills], [
  - Make a sketch using lines and arcs
  - Constrain sketch geometry using relations and dimensions
  - Extrude add and extrude remove geometry
  - Fillet and shell a model
  ]))

/** 
- Move beyond congrats
- Maintenance
- Troubleshooting
**/