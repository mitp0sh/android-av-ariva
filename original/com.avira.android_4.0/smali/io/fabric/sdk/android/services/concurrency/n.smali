.class public final enum Lio/fabric/sdk/android/services/concurrency/n;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/fabric/sdk/android/services/concurrency/n;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/fabric/sdk/android/services/concurrency/n;

.field public static final enum HIGH:Lio/fabric/sdk/android/services/concurrency/n;

.field public static final enum IMMEDIATE:Lio/fabric/sdk/android/services/concurrency/n;

.field public static final enum LOW:Lio/fabric/sdk/android/services/concurrency/n;

.field public static final enum NORMAL:Lio/fabric/sdk/android/services/concurrency/n;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lio/fabric/sdk/android/services/concurrency/n;

    const-string v1, "LOW"

    invoke-direct {v0, v1, v2}, Lio/fabric/sdk/android/services/concurrency/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/fabric/sdk/android/services/concurrency/n;->LOW:Lio/fabric/sdk/android/services/concurrency/n;

    .line 8
    new-instance v0, Lio/fabric/sdk/android/services/concurrency/n;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lio/fabric/sdk/android/services/concurrency/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/fabric/sdk/android/services/concurrency/n;->NORMAL:Lio/fabric/sdk/android/services/concurrency/n;

    .line 9
    new-instance v0, Lio/fabric/sdk/android/services/concurrency/n;

    const-string v1, "HIGH"

    invoke-direct {v0, v1, v4}, Lio/fabric/sdk/android/services/concurrency/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/fabric/sdk/android/services/concurrency/n;->HIGH:Lio/fabric/sdk/android/services/concurrency/n;

    .line 10
    new-instance v0, Lio/fabric/sdk/android/services/concurrency/n;

    const-string v1, "IMMEDIATE"

    invoke-direct {v0, v1, v5}, Lio/fabric/sdk/android/services/concurrency/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/fabric/sdk/android/services/concurrency/n;->IMMEDIATE:Lio/fabric/sdk/android/services/concurrency/n;

    .line 6
    const/4 v0, 0x4

    new-array v0, v0, [Lio/fabric/sdk/android/services/concurrency/n;

    sget-object v1, Lio/fabric/sdk/android/services/concurrency/n;->LOW:Lio/fabric/sdk/android/services/concurrency/n;

    aput-object v1, v0, v2

    sget-object v1, Lio/fabric/sdk/android/services/concurrency/n;->NORMAL:Lio/fabric/sdk/android/services/concurrency/n;

    aput-object v1, v0, v3

    sget-object v1, Lio/fabric/sdk/android/services/concurrency/n;->HIGH:Lio/fabric/sdk/android/services/concurrency/n;

    aput-object v1, v0, v4

    sget-object v1, Lio/fabric/sdk/android/services/concurrency/n;->IMMEDIATE:Lio/fabric/sdk/android/services/concurrency/n;

    aput-object v1, v0, v5

    sput-object v0, Lio/fabric/sdk/android/services/concurrency/n;->$VALUES:[Lio/fabric/sdk/android/services/concurrency/n;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static a(Lio/fabric/sdk/android/services/concurrency/t;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/fabric/sdk/android/services/concurrency/t;",
            "TY;)I"
        }
    .end annotation

    .prologue
    .line 21
    instance-of v0, p1, Lio/fabric/sdk/android/services/concurrency/t;

    if-eqz v0, :cond_0

    .line 22
    check-cast p1, Lio/fabric/sdk/android/services/concurrency/t;

    invoke-interface {p1}, Lio/fabric/sdk/android/services/concurrency/t;->getPriority()Lio/fabric/sdk/android/services/concurrency/n;

    move-result-object v0

    .line 27
    :goto_0
    invoke-virtual {v0}, Lio/fabric/sdk/android/services/concurrency/n;->ordinal()I

    move-result v0

    invoke-interface {p0}, Lio/fabric/sdk/android/services/concurrency/t;->getPriority()Lio/fabric/sdk/android/services/concurrency/n;

    move-result-object v1

    invoke-virtual {v1}, Lio/fabric/sdk/android/services/concurrency/n;->ordinal()I

    move-result v1

    sub-int/2addr v0, v1

    return v0

    .line 24
    :cond_0
    sget-object v0, Lio/fabric/sdk/android/services/concurrency/n;->NORMAL:Lio/fabric/sdk/android/services/concurrency/n;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/fabric/sdk/android/services/concurrency/n;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lio/fabric/sdk/android/services/concurrency/n;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/n;

    return-object v0
.end method

.method public static values()[Lio/fabric/sdk/android/services/concurrency/n;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lio/fabric/sdk/android/services/concurrency/n;->$VALUES:[Lio/fabric/sdk/android/services/concurrency/n;

    invoke-virtual {v0}, [Lio/fabric/sdk/android/services/concurrency/n;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/fabric/sdk/android/services/concurrency/n;

    return-object v0
.end method
