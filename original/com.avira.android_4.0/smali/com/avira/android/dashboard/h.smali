.class final enum Lcom/avira/android/dashboard/h;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/avira/android/dashboard/h;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/avira/android/dashboard/h;

.field public static final enum DEFAULT:Lcom/avira/android/dashboard/h;

.field public static final enum FIRST_SCAN_NOT_COMPLETE:Lcom/avira/android/dashboard/h;

.field public static final enum SCANNING_IN_PROGRESS:Lcom/avira/android/dashboard/h;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 135
    new-instance v0, Lcom/avira/android/dashboard/h;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/avira/android/dashboard/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/dashboard/h;->DEFAULT:Lcom/avira/android/dashboard/h;

    new-instance v0, Lcom/avira/android/dashboard/h;

    const-string v1, "SCANNING_IN_PROGRESS"

    invoke-direct {v0, v1, v3}, Lcom/avira/android/dashboard/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/dashboard/h;->SCANNING_IN_PROGRESS:Lcom/avira/android/dashboard/h;

    new-instance v0, Lcom/avira/android/dashboard/h;

    const-string v1, "FIRST_SCAN_NOT_COMPLETE"

    invoke-direct {v0, v1, v4}, Lcom/avira/android/dashboard/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/dashboard/h;->FIRST_SCAN_NOT_COMPLETE:Lcom/avira/android/dashboard/h;

    .line 133
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/avira/android/dashboard/h;

    sget-object v1, Lcom/avira/android/dashboard/h;->DEFAULT:Lcom/avira/android/dashboard/h;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avira/android/dashboard/h;->SCANNING_IN_PROGRESS:Lcom/avira/android/dashboard/h;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avira/android/dashboard/h;->FIRST_SCAN_NOT_COMPLETE:Lcom/avira/android/dashboard/h;

    aput-object v1, v0, v4

    sput-object v0, Lcom/avira/android/dashboard/h;->$VALUES:[Lcom/avira/android/dashboard/h;

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
    .line 133
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avira/android/dashboard/h;
    .locals 1

    .prologue
    .line 133
    const-class v0, Lcom/avira/android/dashboard/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avira/android/dashboard/h;

    return-object v0
.end method

.method public static values()[Lcom/avira/android/dashboard/h;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/avira/android/dashboard/h;->$VALUES:[Lcom/avira/android/dashboard/h;

    invoke-virtual {v0}, [Lcom/avira/android/dashboard/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avira/android/dashboard/h;

    return-object v0
.end method
