.class final Lcom/avira/android/blacklist/activities/l;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/avira/android/blacklist/activities/BLContactsListActivity;


# direct methods
.method private constructor <init>(Lcom/avira/android/blacklist/activities/BLContactsListActivity;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/avira/android/blacklist/activities/l;->a:Lcom/avira/android/blacklist/activities/BLContactsListActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/avira/android/blacklist/activities/BLContactsListActivity;B)V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lcom/avira/android/blacklist/activities/l;-><init>(Lcom/avira/android/blacklist/activities/BLContactsListActivity;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/l;->a:Lcom/avira/android/blacklist/activities/BLContactsListActivity;

    new-instance v1, Lcom/avira/android/blacklist/activities/m;

    invoke-direct {v1, p0}, Lcom/avira/android/blacklist/activities/m;-><init>(Lcom/avira/android/blacklist/activities/l;)V

    invoke-virtual {v0, v1}, Lcom/avira/android/blacklist/activities/BLContactsListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 174
    return-void
.end method
