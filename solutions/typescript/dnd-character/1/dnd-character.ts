export class DnDCharacter {

    public strength:     number;
    public dexterity:    number;
    public constitution: number;
    public intelligence: number;
    public wisdom:       number;
    public charisma:     number;
    public hitpoints:    number;

    public static generateAbilityScore(): number {
        let throws:number[] = [0, 0, 0, 0];
        for (let i in throws) {
            throws[i] = Math.floor(Math.random() * (7 - 1) + 1);
        }
        throws = throws.sort();
        throws.shift();
        return throws.reduce((a, b) => a + b);
    }

    public static getModifierFor(abilityValue: number): number {
        return Math.floor((abilityValue - 10) / 2);
    }

    constructor () {
        this.strength     = DnDCharacter.generateAbilityScore();
        this.dexterity    = DnDCharacter.generateAbilityScore();
        this.constitution = DnDCharacter.generateAbilityScore();
        this.intelligence = DnDCharacter.generateAbilityScore();
        this.wisdom       = DnDCharacter.generateAbilityScore();
        this.charisma     = DnDCharacter.generateAbilityScore();
        this.hitpoints    = 10 + DnDCharacter.getModifierFor(this.constitution);
    }

}
