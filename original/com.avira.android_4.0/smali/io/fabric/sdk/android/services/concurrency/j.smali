.class public final enum Lio/fabric/sdk/android/services/concurrency/j;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/fabric/sdk/android/services/concurrency/j;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/fabric/sdk/android/services/concurrency/j;

.field public static final enum FINISHED:Lio/fabric/sdk/android/services/concurrency/j;

.field public static final enum PENDING:Lio/fabric/sdk/android/services/concurrency/j;

.field public static final enum RUNNING:Lio/fabric/sdk/android/services/concurrency/j;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 263
    new-instance v0, Lio/fabric/sdk/android/services/concurrency/j;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v2}, Lio/fabric/sdk/android/services/concurrency/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/fabric/sdk/android/services/concurrency/j;->PENDING:Lio/fabric/sdk/android/services/concurrency/j;

    .line 267
    new-instance v0, Lio/fabric/sdk/android/services/concurrency/j;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v3}, Lio/fabric/sdk/android/services/concurrency/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/fabric/sdk/android/services/concurrency/j;->RUNNING:Lio/fabric/sdk/android/services/concurrency/j;

    .line 271
    new-instance v0, Lio/fabric/sdk/android/services/concurrency/j;

    const-string v1, "FINISHED"

    invoke-direct {v0, v1, v4}, Lio/fabric/sdk/android/services/concurrency/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/fabric/sdk/android/services/concurrency/j;->FINISHED:Lio/fabric/sdk/android/services/concurrency/j;

    .line 259
    const/4 v0, 0x3

    new-array v0, v0, [Lio/fabric/sdk/android/services/concurrency/j;

    sget-object v1, Lio/fabric/sdk/android/services/concurrency/j;->PENDING:Lio/fabric/sdk/android/services/concurrency/j;

    aput-object v1, v0, v2

    sget-object v1, Lio/fabric/sdk/android/services/concurrency/j;->RUNNING:Lio/fabric/sdk/android/services/concurrency/j;

    aput-object v1, v0, v3

    sget-object v1, Lio/fabric/sdk/android/services/concurrency/j;->FINISHED:Lio/fabric/sdk/android/services/concurrency/j;

    aput-object v1, v0, v4

    sput-object v0, Lio/fabric/sdk/android/services/concurrency/j;->$VALUES:[Lio/fabric/sdk/android/services/concurrency/j;

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
    .line 259
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/fabric/sdk/android/services/concurrency/j;
    .locals 1

    .prologue
    .line 259
    const-class v0, Lio/fabric/sdk/android/services/concurrency/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/j;

    return-object v0
.end method

.method public static values()[Lio/fabric/sdk/android/services/concurrency/j;
    .locals 1

    .prologue
    .line 259
    sget-object v0, Lio/fabric/sdk/android/services/concurrency/j;->$VALUES:[Lio/fabric/sdk/android/services/concurrency/j;

    invoke-virtual {v0}, [Lio/fabric/sdk/android/services/concurrency/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/fabric/sdk/android/services/concurrency/j;

    return-object v0
.end method
