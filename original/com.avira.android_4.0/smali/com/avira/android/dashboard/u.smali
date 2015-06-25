.class public final enum Lcom/avira/android/dashboard/u;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/avira/android/dashboard/u;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/avira/android/dashboard/u;

.field public static final enum REFRESH_APP_RESET:Lcom/avira/android/dashboard/u;

.field public static final enum REFRESH_FAIL:Lcom/avira/android/dashboard/u;

.field public static final enum REFRESH_INACTIVE_SUBSCRIPTION:Lcom/avira/android/dashboard/u;

.field public static final enum REFRESH_INITIAL:Lcom/avira/android/dashboard/u;

.field public static final enum REFRESH_IN_PROGRESS:Lcom/avira/android/dashboard/u;

.field public static final enum REFRESH_NO_NETWORK:Lcom/avira/android/dashboard/u;

.field public static final enum REFRESH_SUCCESS:Lcom/avira/android/dashboard/u;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 81
    new-instance v0, Lcom/avira/android/dashboard/u;

    const-string v1, "REFRESH_INITIAL"

    invoke-direct {v0, v1, v3}, Lcom/avira/android/dashboard/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/dashboard/u;->REFRESH_INITIAL:Lcom/avira/android/dashboard/u;

    .line 82
    new-instance v0, Lcom/avira/android/dashboard/u;

    const-string v1, "REFRESH_SUCCESS"

    invoke-direct {v0, v1, v4}, Lcom/avira/android/dashboard/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/dashboard/u;->REFRESH_SUCCESS:Lcom/avira/android/dashboard/u;

    .line 83
    new-instance v0, Lcom/avira/android/dashboard/u;

    const-string v1, "REFRESH_NO_NETWORK"

    invoke-direct {v0, v1, v5}, Lcom/avira/android/dashboard/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/dashboard/u;->REFRESH_NO_NETWORK:Lcom/avira/android/dashboard/u;

    .line 84
    new-instance v0, Lcom/avira/android/dashboard/u;

    const-string v1, "REFRESH_FAIL"

    invoke-direct {v0, v1, v6}, Lcom/avira/android/dashboard/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/dashboard/u;->REFRESH_FAIL:Lcom/avira/android/dashboard/u;

    .line 85
    new-instance v0, Lcom/avira/android/dashboard/u;

    const-string v1, "REFRESH_IN_PROGRESS"

    invoke-direct {v0, v1, v7}, Lcom/avira/android/dashboard/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/dashboard/u;->REFRESH_IN_PROGRESS:Lcom/avira/android/dashboard/u;

    .line 86
    new-instance v0, Lcom/avira/android/dashboard/u;

    const-string v1, "REFRESH_INACTIVE_SUBSCRIPTION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/avira/android/dashboard/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/dashboard/u;->REFRESH_INACTIVE_SUBSCRIPTION:Lcom/avira/android/dashboard/u;

    .line 87
    new-instance v0, Lcom/avira/android/dashboard/u;

    const-string v1, "REFRESH_APP_RESET"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/avira/android/dashboard/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/dashboard/u;->REFRESH_APP_RESET:Lcom/avira/android/dashboard/u;

    .line 79
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/avira/android/dashboard/u;

    sget-object v1, Lcom/avira/android/dashboard/u;->REFRESH_INITIAL:Lcom/avira/android/dashboard/u;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avira/android/dashboard/u;->REFRESH_SUCCESS:Lcom/avira/android/dashboard/u;

    aput-object v1, v0, v4

    sget-object v1, Lcom/avira/android/dashboard/u;->REFRESH_NO_NETWORK:Lcom/avira/android/dashboard/u;

    aput-object v1, v0, v5

    sget-object v1, Lcom/avira/android/dashboard/u;->REFRESH_FAIL:Lcom/avira/android/dashboard/u;

    aput-object v1, v0, v6

    sget-object v1, Lcom/avira/android/dashboard/u;->REFRESH_IN_PROGRESS:Lcom/avira/android/dashboard/u;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/avira/android/dashboard/u;->REFRESH_INACTIVE_SUBSCRIPTION:Lcom/avira/android/dashboard/u;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/avira/android/dashboard/u;->REFRESH_APP_RESET:Lcom/avira/android/dashboard/u;

    aput-object v2, v0, v1

    sput-object v0, Lcom/avira/android/dashboard/u;->$VALUES:[Lcom/avira/android/dashboard/u;

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
    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avira/android/dashboard/u;
    .locals 1

    .prologue
    .line 79
    const-class v0, Lcom/avira/android/dashboard/u;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avira/android/dashboard/u;

    return-object v0
.end method

.method public static values()[Lcom/avira/android/dashboard/u;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/avira/android/dashboard/u;->$VALUES:[Lcom/avira/android/dashboard/u;

    invoke-virtual {v0}, [Lcom/avira/android/dashboard/u;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avira/android/dashboard/u;

    return-object v0
.end method
