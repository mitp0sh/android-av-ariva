.class public final enum Lcom/google/c/a/d;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/c/a/d;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/c/a/d;

.field public static final enum EXACT_MATCH:Lcom/google/c/a/d;

.field public static final enum NOT_A_NUMBER:Lcom/google/c/a/d;

.field public static final enum NO_MATCH:Lcom/google/c/a/d;

.field public static final enum NSN_MATCH:Lcom/google/c/a/d;

.field public static final enum SHORT_NSN_MATCH:Lcom/google/c/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/c/a/d;

    const-string v1, "NOT_A_NUMBER"

    invoke-direct {v0, v1, v2}, Lcom/google/c/a/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/c/a/d;->NOT_A_NUMBER:Lcom/google/c/a/d;

    new-instance v0, Lcom/google/c/a/d;

    const-string v1, "NO_MATCH"

    invoke-direct {v0, v1, v3}, Lcom/google/c/a/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/c/a/d;->NO_MATCH:Lcom/google/c/a/d;

    new-instance v0, Lcom/google/c/a/d;

    const-string v1, "SHORT_NSN_MATCH"

    invoke-direct {v0, v1, v4}, Lcom/google/c/a/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/c/a/d;->SHORT_NSN_MATCH:Lcom/google/c/a/d;

    new-instance v0, Lcom/google/c/a/d;

    const-string v1, "NSN_MATCH"

    invoke-direct {v0, v1, v5}, Lcom/google/c/a/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/c/a/d;->NSN_MATCH:Lcom/google/c/a/d;

    new-instance v0, Lcom/google/c/a/d;

    const-string v1, "EXACT_MATCH"

    invoke-direct {v0, v1, v6}, Lcom/google/c/a/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/c/a/d;->EXACT_MATCH:Lcom/google/c/a/d;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/c/a/d;

    sget-object v1, Lcom/google/c/a/d;->NOT_A_NUMBER:Lcom/google/c/a/d;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/c/a/d;->NO_MATCH:Lcom/google/c/a/d;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/c/a/d;->SHORT_NSN_MATCH:Lcom/google/c/a/d;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/c/a/d;->NSN_MATCH:Lcom/google/c/a/d;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/c/a/d;->EXACT_MATCH:Lcom/google/c/a/d;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/c/a/d;->$VALUES:[Lcom/google/c/a/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/c/a/d;
    .locals 1

    const-class v0, Lcom/google/c/a/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/c/a/d;

    return-object v0
.end method

.method public static final values()[Lcom/google/c/a/d;
    .locals 1

    sget-object v0, Lcom/google/c/a/d;->$VALUES:[Lcom/google/c/a/d;

    invoke-virtual {v0}, [Lcom/google/c/a/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/c/a/d;

    return-object v0
.end method
