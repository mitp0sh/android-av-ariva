.class Lcom/crashlytics/android/Crashlytics$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/fabric/sdk/android/services/f/s;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/fabric/sdk/android/services/f/s",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/crashlytics/android/Crashlytics;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/Crashlytics;)V
    .locals 0

    .prologue
    .line 898
    iput-object p1, p0, Lcom/crashlytics/android/Crashlytics$3;->this$0:Lcom/crashlytics/android/Crashlytics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public usingSettings(Lio/fabric/sdk/android/services/f/v;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 901
    iget-object v1, p1, Lio/fabric/sdk/android/services/f/v;->d:Lio/fabric/sdk/android/services/f/m;

    iget-boolean v1, v1, Lio/fabric/sdk/android/services/f/m;->a:Z

    if-eqz v1, :cond_1

    .line 902
    iget-object v1, p0, Lcom/crashlytics/android/Crashlytics$3;->this$0:Lcom/crashlytics/android/Crashlytics;

    invoke-virtual {v1}, Lcom/crashlytics/android/Crashlytics;->shouldSendReportsWithoutPrompting()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 904
    :goto_0
    return-object v0

    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic usingSettings(Lio/fabric/sdk/android/services/f/v;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 898
    invoke-virtual {p0, p1}, Lcom/crashlytics/android/Crashlytics$3;->usingSettings(Lio/fabric/sdk/android/services/f/v;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
