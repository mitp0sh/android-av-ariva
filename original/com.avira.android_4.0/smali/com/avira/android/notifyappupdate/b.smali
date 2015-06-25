.class public final Lcom/avira/android/notifyappupdate/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final GCM_NOTIFICATION_ID:I = 0x5c5a


# direct methods
.method public static a()V
    .locals 2

    .prologue
    .line 65
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->e()Landroid/app/NotificationManager;

    move-result-object v0

    const/16 v1, 0x5c5a

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 66
    return-void
.end method
