# Feature Toggling in Swift - Proof of Concept
Based on this great article on feature toggling http://martinfowler.com/articles/feature-toggles.html

# How it works
This trivial proof of concept application uses only local content fetching but there can be much more into this.
![alt overall_diagram] (https://raw.githubusercontent.com/ktustanowski/feature-toggle-proof-of-concept/master/Diagrams/Feature%20Toggling.png)
<b>ToggleRouter</b> - Object that fetches the feature configuration for the app.

<b>FeatureDecisions</b> - Object that supplies the app with concrete feature on / off decisions. 

<b>FeatureTogglableDecorator</b> - Object that decorates application objects with behaviors corresponding to toggled features. This is the place where all of the configuration is done for togglable objects.

![alt decoration_sequence](https://raw.githubusercontent.com/ktustanowski/feature-toggle-proof-of-concept/master/Diagrams/Feature%20Toggle%20Sequence.png)
![alt more_advanced_decision_making](https://raw.githubusercontent.com/ktustanowski/feature-toggle-proof-of-concept/master/Diagrams/Feature%20Toggle%20Sequence%20Region%20Check.png)

Root of the toggle is ToggleRouter which has only one thing to do - load configuration from a source.
FeatureDecisions object responsibility is determine whether a feature should be on / off. This decision is made based on, first place, ToggleRouter response but this don’t have to be only condition to be met. Feature, for example, can be toggled on but only for „US”. ToggleRouter will return this info and FeatureDecisions will check current region and act accordingly.
FeatureTogglableDecorator based on response from FeatureDecisions will update object behavior.

# How to make new / existing feature togglable
1. If possible extract feature to extension or separate file and implement this feature in a way it can be enabled / disabled. This can be done i.e. by using Strategy pattern or by injecting a behavior into a closure.
2. Add toggle for this feature in configuration (local or external)
3. Enable parsing of this feature toggle in ToggleRouter so it can provide information about
feature availability.
4. Create feature decision for this feature in FeatureDecissions so it can be used later.
5. Implement Togglable protocol in object that should contain this feature.
6. Create separate method in FeatureTogglableDecorator that takes concrete destination object
and configures its decorate closure with desired behavior.
