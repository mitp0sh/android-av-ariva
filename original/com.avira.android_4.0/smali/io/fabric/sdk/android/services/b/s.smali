.class public final enum Lio/fabric/sdk/android/services/b/s;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/fabric/sdk/android/services/b/s;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/fabric/sdk/android/services/b/s;

.field public static final enum APP_STORE:Lio/fabric/sdk/android/services/b/s;

.field public static final BETA_APP_PACKAGE_NAME:Ljava/lang/String; = "io.crash.air"

.field public static final enum DEVELOPER:Lio/fabric/sdk/android/services/b/s;

.field public static final enum TEST_DISTRIBUTION:Lio/fabric/sdk/android/services/b/s;

.field public static final enum USER_SIDELOAD:Lio/fabric/sdk/android/services/b/s;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 10
    new-instance v0, Lio/fabric/sdk/android/services/b/s;

    const-string v1, "DEVELOPER"

    invoke-direct {v0, v1, v5, v2}, Lio/fabric/sdk/android/services/b/s;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/fabric/sdk/android/services/b/s;->DEVELOPER:Lio/fabric/sdk/android/services/b/s;

    new-instance v0, Lio/fabric/sdk/android/services/b/s;

    const-string v1, "USER_SIDELOAD"

    invoke-direct {v0, v1, v2, v3}, Lio/fabric/sdk/android/services/b/s;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/fabric/sdk/android/services/b/s;->USER_SIDELOAD:Lio/fabric/sdk/android/services/b/s;

    new-instance v0, Lio/fabric/sdk/android/services/b/s;

    const-string v1, "TEST_DISTRIBUTION"

    invoke-direct {v0, v1, v3, v4}, Lio/fabric/sdk/android/services/b/s;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/fabric/sdk/android/services/b/s;->TEST_DISTRIBUTION:Lio/fabric/sdk/android/services/b/s;

    new-instance v0, Lio/fabric/sdk/android/services/b/s;

    const-string v1, "APP_STORE"

    invoke-direct {v0, v1, v4, v6}, Lio/fabric/sdk/android/services/b/s;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/fabric/sdk/android/services/b/s;->APP_STORE:Lio/fabric/sdk/android/services/b/s;

    .line 8
    new-array v0, v6, [Lio/fabric/sdk/android/services/b/s;

    sget-object v1, Lio/fabric/sdk/android/services/b/s;->DEVELOPER:Lio/fabric/sdk/android/services/b/s;

    aput-object v1, v0, v5

    sget-object v1, Lio/fabric/sdk/android/services/b/s;->USER_SIDELOAD:Lio/fabric/sdk/android/services/b/s;

    aput-object v1, v0, v2

    sget-object v1, Lio/fabric/sdk/android/services/b/s;->TEST_DISTRIBUTION:Lio/fabric/sdk/android/services/b/s;

    aput-object v1, v0, v3

    sget-object v1, Lio/fabric/sdk/android/services/b/s;->APP_STORE:Lio/fabric/sdk/android/services/b/s;

    aput-object v1, v0, v4

    sput-object v0, Lio/fabric/sdk/android/services/b/s;->$VALUES:[Lio/fabric/sdk/android/services/b/s;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput p3, p0, Lio/fabric/sdk/android/services/b/s;->a:I

    .line 18
    return-void
.end method

.method public static a(Ljava/lang/String;)Lio/fabric/sdk/android/services/b/s;
    .locals 1

    .prologue
    .line 34
    const-string v0, "io.crash.air"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    sget-object v0, Lio/fabric/sdk/android/services/b/s;->TEST_DISTRIBUTION:Lio/fabric/sdk/android/services/b/s;

    .line 39
    :goto_0
    return-object v0

    .line 36
    :cond_0
    if-eqz p0, :cond_1

    .line 37
    sget-object v0, Lio/fabric/sdk/android/services/b/s;->APP_STORE:Lio/fabric/sdk/android/services/b/s;

    goto :goto_0

    .line 39
    :cond_1
    sget-object v0, Lio/fabric/sdk/android/services/b/s;->DEVELOPER:Lio/fabric/sdk/android/services/b/s;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/fabric/sdk/android/services/b/s;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lio/fabric/sdk/android/services/b/s;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/services/b/s;

    return-object v0
.end method

.method public static values()[Lio/fabric/sdk/android/services/b/s;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lio/fabric/sdk/android/services/b/s;->$VALUES:[Lio/fabric/sdk/android/services/b/s;

    invoke-virtual {v0}, [Lio/fabric/sdk/android/services/b/s;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/fabric/sdk/android/services/b/s;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lio/fabric/sdk/android/services/b/s;->a:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lio/fabric/sdk/android/services/b/s;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
