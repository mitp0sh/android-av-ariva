.class public final enum Lcom/avira/android/database/l;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/avira/android/database/l;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/avira/android/database/l;

.field public static final enum Failed:Lcom/avira/android/database/l;

.field public static final enum Idle:Lcom/avira/android/database/l;

.field public static final enum InProgress:Lcom/avira/android/database/l;

.field public static final enum Succeeded:Lcom/avira/android/database/l;

.field public static final enum Unknown:Lcom/avira/android/database/l;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 76
    new-instance v0, Lcom/avira/android/database/l;

    const-string v1, "InProgress"

    invoke-direct {v0, v1, v2}, Lcom/avira/android/database/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/database/l;->InProgress:Lcom/avira/android/database/l;

    new-instance v0, Lcom/avira/android/database/l;

    const-string v1, "Idle"

    invoke-direct {v0, v1, v3}, Lcom/avira/android/database/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/database/l;->Idle:Lcom/avira/android/database/l;

    new-instance v0, Lcom/avira/android/database/l;

    const-string v1, "Succeeded"

    invoke-direct {v0, v1, v4}, Lcom/avira/android/database/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/database/l;->Succeeded:Lcom/avira/android/database/l;

    new-instance v0, Lcom/avira/android/database/l;

    const-string v1, "Failed"

    invoke-direct {v0, v1, v5}, Lcom/avira/android/database/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/database/l;->Failed:Lcom/avira/android/database/l;

    new-instance v0, Lcom/avira/android/database/l;

    const-string v1, "Unknown"

    invoke-direct {v0, v1, v6}, Lcom/avira/android/database/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/database/l;->Unknown:Lcom/avira/android/database/l;

    .line 74
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/avira/android/database/l;

    sget-object v1, Lcom/avira/android/database/l;->InProgress:Lcom/avira/android/database/l;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avira/android/database/l;->Idle:Lcom/avira/android/database/l;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avira/android/database/l;->Succeeded:Lcom/avira/android/database/l;

    aput-object v1, v0, v4

    sget-object v1, Lcom/avira/android/database/l;->Failed:Lcom/avira/android/database/l;

    aput-object v1, v0, v5

    sget-object v1, Lcom/avira/android/database/l;->Unknown:Lcom/avira/android/database/l;

    aput-object v1, v0, v6

    sput-object v0, Lcom/avira/android/database/l;->$VALUES:[Lcom/avira/android/database/l;

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
    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avira/android/database/l;
    .locals 1

    .prologue
    .line 74
    const-class v0, Lcom/avira/android/database/l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avira/android/database/l;

    return-object v0
.end method

.method public static values()[Lcom/avira/android/database/l;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/avira/android/database/l;->$VALUES:[Lcom/avira/android/database/l;

    invoke-virtual {v0}, [Lcom/avira/android/database/l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avira/android/database/l;

    return-object v0
.end method
