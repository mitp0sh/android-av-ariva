.class public final enum Lcom/google/c/a/e;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/c/a/e;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/c/a/e;

.field public static final enum INVALID_COUNTRY_CODE:Lcom/google/c/a/e;

.field public static final enum IS_POSSIBLE:Lcom/google/c/a/e;

.field public static final enum TOO_LONG:Lcom/google/c/a/e;

.field public static final enum TOO_SHORT:Lcom/google/c/a/e;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/c/a/e;

    const-string v1, "IS_POSSIBLE"

    invoke-direct {v0, v1, v2}, Lcom/google/c/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/c/a/e;->IS_POSSIBLE:Lcom/google/c/a/e;

    new-instance v0, Lcom/google/c/a/e;

    const-string v1, "INVALID_COUNTRY_CODE"

    invoke-direct {v0, v1, v3}, Lcom/google/c/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/c/a/e;->INVALID_COUNTRY_CODE:Lcom/google/c/a/e;

    new-instance v0, Lcom/google/c/a/e;

    const-string v1, "TOO_SHORT"

    invoke-direct {v0, v1, v4}, Lcom/google/c/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/c/a/e;->TOO_SHORT:Lcom/google/c/a/e;

    new-instance v0, Lcom/google/c/a/e;

    const-string v1, "TOO_LONG"

    invoke-direct {v0, v1, v5}, Lcom/google/c/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/c/a/e;->TOO_LONG:Lcom/google/c/a/e;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/c/a/e;

    sget-object v1, Lcom/google/c/a/e;->IS_POSSIBLE:Lcom/google/c/a/e;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/c/a/e;->INVALID_COUNTRY_CODE:Lcom/google/c/a/e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/c/a/e;->TOO_SHORT:Lcom/google/c/a/e;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/c/a/e;->TOO_LONG:Lcom/google/c/a/e;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/c/a/e;->$VALUES:[Lcom/google/c/a/e;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/c/a/e;
    .locals 1

    const-class v0, Lcom/google/c/a/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/c/a/e;

    return-object v0
.end method

.method public static final values()[Lcom/google/c/a/e;
    .locals 1

    sget-object v0, Lcom/google/c/a/e;->$VALUES:[Lcom/google/c/a/e;

    invoke-virtual {v0}, [Lcom/google/c/a/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/c/a/e;

    return-object v0
.end method
