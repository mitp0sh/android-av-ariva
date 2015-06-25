.class public Lcom/avira/android/common/services/LocationService;
.super Landroid/app/Service;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .prologue
    .line 21
    invoke-static {}, Lcom/avira/android/c/a;->a()Lcom/avira/android/c/a;

    move-result-object v0

    new-instance v1, Lcom/avira/android/common/services/a;

    invoke-direct {v1, p0}, Lcom/avira/android/common/services/a;-><init>(Lcom/avira/android/common/services/LocationService;)V

    invoke-virtual {v0, v1}, Lcom/avira/android/c/a;->b(Lcom/avira/android/c/h;)V

    .line 33
    const/4 v0, 0x2

    return v0
.end method
