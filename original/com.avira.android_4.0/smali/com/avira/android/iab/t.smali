.class public final enum Lcom/avira/android/iab/t;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/avira/android/iab/t;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/avira/android/iab/t;

.field public static final enum ACCOUNT_DISPLAY:Lcom/avira/android/iab/t;

.field public static final enum ACCOUNT_REQUEST:Lcom/avira/android/iab/t;

.field public static final enum NONE:Lcom/avira/android/iab/t;

.field public static final enum SHOULD_OVERRIDE:Lcom/avira/android/iab/t;

.field public static final enum SHOW_IAB:Lcom/avira/android/iab/t;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/avira/android/iab/t;

    const-string v1, "ACCOUNT_DISPLAY"

    invoke-direct {v0, v1, v2}, Lcom/avira/android/iab/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/iab/t;->ACCOUNT_DISPLAY:Lcom/avira/android/iab/t;

    new-instance v0, Lcom/avira/android/iab/t;

    const-string v1, "ACCOUNT_REQUEST"

    invoke-direct {v0, v1, v3}, Lcom/avira/android/iab/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/iab/t;->ACCOUNT_REQUEST:Lcom/avira/android/iab/t;

    new-instance v0, Lcom/avira/android/iab/t;

    const-string v1, "SHOULD_OVERRIDE"

    invoke-direct {v0, v1, v4}, Lcom/avira/android/iab/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/iab/t;->SHOULD_OVERRIDE:Lcom/avira/android/iab/t;

    new-instance v0, Lcom/avira/android/iab/t;

    const-string v1, "SHOW_IAB"

    invoke-direct {v0, v1, v5}, Lcom/avira/android/iab/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/iab/t;->SHOW_IAB:Lcom/avira/android/iab/t;

    new-instance v0, Lcom/avira/android/iab/t;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v6}, Lcom/avira/android/iab/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/iab/t;->NONE:Lcom/avira/android/iab/t;

    .line 17
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/avira/android/iab/t;

    sget-object v1, Lcom/avira/android/iab/t;->ACCOUNT_DISPLAY:Lcom/avira/android/iab/t;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avira/android/iab/t;->ACCOUNT_REQUEST:Lcom/avira/android/iab/t;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avira/android/iab/t;->SHOULD_OVERRIDE:Lcom/avira/android/iab/t;

    aput-object v1, v0, v4

    sget-object v1, Lcom/avira/android/iab/t;->SHOW_IAB:Lcom/avira/android/iab/t;

    aput-object v1, v0, v5

    sget-object v1, Lcom/avira/android/iab/t;->NONE:Lcom/avira/android/iab/t;

    aput-object v1, v0, v6

    sput-object v0, Lcom/avira/android/iab/t;->$VALUES:[Lcom/avira/android/iab/t;

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
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avira/android/iab/t;
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/avira/android/iab/t;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avira/android/iab/t;

    return-object v0
.end method

.method public static values()[Lcom/avira/android/iab/t;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/avira/android/iab/t;->$VALUES:[Lcom/avira/android/iab/t;

    invoke-virtual {v0}, [Lcom/avira/android/iab/t;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avira/android/iab/t;

    return-object v0
.end method
