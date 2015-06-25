.class public final enum Lio/fabric/sdk/android/services/d/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/fabric/sdk/android/services/d/d;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/fabric/sdk/android/services/d/d;

.field public static final enum DELETE:Lio/fabric/sdk/android/services/d/d;

.field public static final enum GET:Lio/fabric/sdk/android/services/d/d;

.field public static final enum POST:Lio/fabric/sdk/android/services/d/d;

.field public static final enum PUT:Lio/fabric/sdk/android/services/d/d;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lio/fabric/sdk/android/services/d/d;

    const-string v1, "GET"

    invoke-direct {v0, v1, v2}, Lio/fabric/sdk/android/services/d/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/fabric/sdk/android/services/d/d;->GET:Lio/fabric/sdk/android/services/d/d;

    .line 5
    new-instance v0, Lio/fabric/sdk/android/services/d/d;

    const-string v1, "POST"

    invoke-direct {v0, v1, v3}, Lio/fabric/sdk/android/services/d/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/fabric/sdk/android/services/d/d;->POST:Lio/fabric/sdk/android/services/d/d;

    .line 6
    new-instance v0, Lio/fabric/sdk/android/services/d/d;

    const-string v1, "PUT"

    invoke-direct {v0, v1, v4}, Lio/fabric/sdk/android/services/d/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/fabric/sdk/android/services/d/d;->PUT:Lio/fabric/sdk/android/services/d/d;

    .line 7
    new-instance v0, Lio/fabric/sdk/android/services/d/d;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v5}, Lio/fabric/sdk/android/services/d/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/fabric/sdk/android/services/d/d;->DELETE:Lio/fabric/sdk/android/services/d/d;

    .line 3
    const/4 v0, 0x4

    new-array v0, v0, [Lio/fabric/sdk/android/services/d/d;

    sget-object v1, Lio/fabric/sdk/android/services/d/d;->GET:Lio/fabric/sdk/android/services/d/d;

    aput-object v1, v0, v2

    sget-object v1, Lio/fabric/sdk/android/services/d/d;->POST:Lio/fabric/sdk/android/services/d/d;

    aput-object v1, v0, v3

    sget-object v1, Lio/fabric/sdk/android/services/d/d;->PUT:Lio/fabric/sdk/android/services/d/d;

    aput-object v1, v0, v4

    sget-object v1, Lio/fabric/sdk/android/services/d/d;->DELETE:Lio/fabric/sdk/android/services/d/d;

    aput-object v1, v0, v5

    sput-object v0, Lio/fabric/sdk/android/services/d/d;->$VALUES:[Lio/fabric/sdk/android/services/d/d;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/fabric/sdk/android/services/d/d;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lio/fabric/sdk/android/services/d/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/services/d/d;

    return-object v0
.end method

.method public static values()[Lio/fabric/sdk/android/services/d/d;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lio/fabric/sdk/android/services/d/d;->$VALUES:[Lio/fabric/sdk/android/services/d/d;

    invoke-virtual {v0}, [Lio/fabric/sdk/android/services/d/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/fabric/sdk/android/services/d/d;

    return-object v0
.end method
