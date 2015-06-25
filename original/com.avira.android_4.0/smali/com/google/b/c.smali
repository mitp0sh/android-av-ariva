.class public abstract enum Lcom/google/b/c;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/b/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/b/c;",
        ">;",
        "Lcom/google/b/i;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/b/c;

.field public static final enum IDENTITY:Lcom/google/b/c;

.field public static final enum LOWER_CASE_WITH_DASHES:Lcom/google/b/c;

.field public static final enum LOWER_CASE_WITH_UNDERSCORES:Lcom/google/b/c;

.field public static final enum UPPER_CAMEL_CASE:Lcom/google/b/c;

.field public static final enum UPPER_CAMEL_CASE_WITH_SPACES:Lcom/google/b/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    new-instance v0, Lcom/google/b/d;

    const-string v1, "IDENTITY"

    invoke-direct {v0, v1}, Lcom/google/b/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/b/c;->IDENTITY:Lcom/google/b/c;

    .line 52
    new-instance v0, Lcom/google/b/e;

    const-string v1, "UPPER_CAMEL_CASE"

    invoke-direct {v0, v1}, Lcom/google/b/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/b/c;->UPPER_CAMEL_CASE:Lcom/google/b/c;

    .line 71
    new-instance v0, Lcom/google/b/f;

    const-string v1, "UPPER_CAMEL_CASE_WITH_SPACES"

    invoke-direct {v0, v1}, Lcom/google/b/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/b/c;->UPPER_CAMEL_CASE_WITH_SPACES:Lcom/google/b/c;

    .line 89
    new-instance v0, Lcom/google/b/g;

    const-string v1, "LOWER_CASE_WITH_UNDERSCORES"

    invoke-direct {v0, v1}, Lcom/google/b/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/b/c;->LOWER_CASE_WITH_UNDERSCORES:Lcom/google/b/c;

    .line 112
    new-instance v0, Lcom/google/b/h;

    const-string v1, "LOWER_CASE_WITH_DASHES"

    invoke-direct {v0, v1}, Lcom/google/b/h;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/b/c;->LOWER_CASE_WITH_DASHES:Lcom/google/b/c;

    .line 30
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/b/c;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/b/c;->IDENTITY:Lcom/google/b/c;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/b/c;->UPPER_CAMEL_CASE:Lcom/google/b/c;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/b/c;->UPPER_CAMEL_CASE_WITH_SPACES:Lcom/google/b/c;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/google/b/c;->LOWER_CASE_WITH_UNDERSCORES:Lcom/google/b/c;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/google/b/c;->LOWER_CASE_WITH_DASHES:Lcom/google/b/c;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/b/c;->$VALUES:[Lcom/google/b/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IB)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/google/b/c;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_0

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_1
    return-object p0

    :cond_2
    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/b/c;
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/google/b/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/b/c;

    return-object v0
.end method

.method public static values()[Lcom/google/b/c;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/google/b/c;->$VALUES:[Lcom/google/b/c;

    invoke-virtual {v0}, [Lcom/google/b/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/b/c;

    return-object v0
.end method
