.class public final enum Lcom/avira/android/iab/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/avira/android/iab/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/avira/android/iab/a;

.field public static final enum IAB_BUY_SUCCESS:Lcom/avira/android/iab/a;

.field public static final enum IAB_LOGIN_PREMIUM:Lcom/avira/android/iab/a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    new-instance v0, Lcom/avira/android/iab/a;

    const-string v1, "IAB_BUY_SUCCESS"

    invoke-direct {v0, v1, v2}, Lcom/avira/android/iab/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/iab/a;->IAB_BUY_SUCCESS:Lcom/avira/android/iab/a;

    new-instance v0, Lcom/avira/android/iab/a;

    const-string v1, "IAB_LOGIN_PREMIUM"

    invoke-direct {v0, v1, v3}, Lcom/avira/android/iab/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/iab/a;->IAB_LOGIN_PREMIUM:Lcom/avira/android/iab/a;

    .line 28
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/avira/android/iab/a;

    sget-object v1, Lcom/avira/android/iab/a;->IAB_BUY_SUCCESS:Lcom/avira/android/iab/a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avira/android/iab/a;->IAB_LOGIN_PREMIUM:Lcom/avira/android/iab/a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/avira/android/iab/a;->$VALUES:[Lcom/avira/android/iab/a;

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
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avira/android/iab/a;
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/avira/android/iab/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avira/android/iab/a;

    return-object v0
.end method

.method public static values()[Lcom/avira/android/iab/a;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/avira/android/iab/a;->$VALUES:[Lcom/avira/android/iab/a;

    invoke-virtual {v0}, [Lcom/avira/android/iab/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avira/android/iab/a;

    return-object v0
.end method
