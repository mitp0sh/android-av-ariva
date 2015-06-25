.class final Lcom/avira/android/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avira/android/ApplicationService;


# direct methods
.method constructor <init>(Lcom/avira/android/ApplicationService;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/avira/android/c;->a:Lcom/avira/android/ApplicationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .prologue
    .line 144
    invoke-static {}, Lcom/avira/android/device/DeviceInfoUpdateService;->a()V

    .line 145
    return-void
.end method
