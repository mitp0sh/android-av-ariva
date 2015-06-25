.class final Lcom/avira/android/device/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avira/android/device/DeviceInfoUpdateService;


# direct methods
.method constructor <init>(Lcom/avira/android/device/DeviceInfoUpdateService;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/avira/android/device/e;->a:Lcom/avira/android/device/DeviceInfoUpdateService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 72
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 73
    invoke-static {}, Lcom/avira/android/c/a;->a()Lcom/avira/android/c/a;

    move-result-object v0

    new-instance v1, Lcom/avira/android/device/f;

    invoke-direct {v1, p0}, Lcom/avira/android/device/f;-><init>(Lcom/avira/android/device/e;)V

    invoke-virtual {v0, v1}, Lcom/avira/android/c/a;->a(Lcom/avira/android/c/h;)V

    .line 85
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 86
    return-void
.end method
