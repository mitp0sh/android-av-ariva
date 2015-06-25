.class public Lcom/avira/android/blacklist/activities/BLImportActivity$BlacklistContactManagerUpdated;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static final DATA_UPDATE_ACTION:Ljava/lang/String; = "com.avira.android.action.data_update"


# instance fields
.field final synthetic a:Lcom/avira/android/blacklist/activities/BLImportActivity;


# direct methods
.method public constructor <init>(Lcom/avira/android/blacklist/activities/BLImportActivity;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/avira/android/blacklist/activities/BLImportActivity$BlacklistContactManagerUpdated;->a:Lcom/avira/android/blacklist/activities/BLImportActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 157
    new-instance v0, Lcom/avira/android/blacklist/activities/v;

    iget-object v1, p0, Lcom/avira/android/blacklist/activities/BLImportActivity$BlacklistContactManagerUpdated;->a:Lcom/avira/android/blacklist/activities/BLImportActivity;

    invoke-direct {v0, v1, v2}, Lcom/avira/android/blacklist/activities/v;-><init>(Lcom/avira/android/blacklist/activities/BLImportActivity;B)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/avira/android/blacklist/activities/v;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 158
    return-void
.end method
