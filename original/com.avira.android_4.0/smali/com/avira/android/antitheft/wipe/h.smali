.class final Lcom/avira/android/antitheft/wipe/h;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/avira/android/antitheft/wipe/ATRemoteWipe$WipeJobCompletedBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/avira/android/antitheft/wipe/ATRemoteWipe$WipeJobCompletedBroadcastReceiver;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lcom/avira/android/antitheft/wipe/h;->a:Lcom/avira/android/antitheft/wipe/ATRemoteWipe$WipeJobCompletedBroadcastReceiver;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 293
    new-instance v0, Lcom/avira/android/antitheft/wipe/c;

    invoke-direct {v0}, Lcom/avira/android/antitheft/wipe/c;-><init>()V

    invoke-virtual {v0}, Lcom/avira/android/antitheft/wipe/c;->a()Ljava/lang/Boolean;

    .line 294
    return-void
.end method
