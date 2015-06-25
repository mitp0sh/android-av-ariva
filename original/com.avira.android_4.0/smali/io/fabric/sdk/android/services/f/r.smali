.class final Lio/fabric/sdk/android/services/f/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final INSTANCE:Lio/fabric/sdk/android/services/f/q;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Lio/fabric/sdk/android/services/f/q;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/fabric/sdk/android/services/f/q;-><init>(B)V

    sput-object v0, Lio/fabric/sdk/android/services/f/r;->INSTANCE:Lio/fabric/sdk/android/services/f/q;

    return-void
.end method

.method static synthetic a()Lio/fabric/sdk/android/services/f/q;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lio/fabric/sdk/android/services/f/r;->INSTANCE:Lio/fabric/sdk/android/services/f/q;

    return-object v0
.end method
