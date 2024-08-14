import Buffer "mo:base/Buffer";

actor {

    let goals = Buffer.Buffer<Text>(0);

    let name : Text = "Authenty Station";

    var manifesto : Text = "To bring the world of blockchain transparency, redudundancy, and immutability to authentication services for luxury goods and collectables";

    public shared query func getName() : async Text {
        return name;
    };

    public shared query func getManifesto() : async Text {
        return manifesto;
    };

    public func setManifesto(newManifesto : Text) : async () {
        manifesto := newManifesto;
        return;
    };

    public func addGoal(newGoal : Text) : async () {
        goals.add(newGoal);
        return;
    };

    public shared query func getGoals() : async [Text] {
      return Buffer.toArray(goals);
    };
};