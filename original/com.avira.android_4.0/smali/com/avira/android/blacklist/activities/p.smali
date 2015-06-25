.class final Lcom/avira/android/blacklist/activities/p;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/avira/android/blacklist/activities/BLDeleteActivity;


# direct methods
.method private constructor <init>(Lcom/avira/android/blacklist/activities/BLDeleteActivity;)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lcom/avira/android/blacklist/activities/p;->a:Lcom/avira/android/blacklist/activities/BLDeleteActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/avira/android/blacklist/activities/BLDeleteActivity;B)V
    .locals 0

    .prologue
    .line 268
    invoke-direct {p0, p1}, Lcom/avira/android/blacklist/activities/p;-><init>(Lcom/avira/android/blacklist/activities/BLDeleteActivity;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 273
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->i()V

    .line 274
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/p;->a:Lcom/avira/android/blacklist/activities/BLDeleteActivity;

    invoke-static {v0}, Lcom/avira/android/blacklist/activities/BLDeleteActivity;->a(Lcom/avira/android/blacklist/activities/BLDeleteActivity;)Lcom/avira/android/blacklist/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/blacklist/a/b;->notifyDataSetChanged()V

    .line 275
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/p;->a:Lcom/avira/android/blacklist/activities/BLDeleteActivity;

    invoke-static {v0}, Lcom/avira/android/blacklist/activities/BLDeleteActivity;->a(Lcom/avira/android/blacklist/activities/BLDeleteActivity;)Lcom/avira/android/blacklist/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/blacklist/a/b;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/p;->a:Lcom/avira/android/blacklist/activities/BLDeleteActivity;

    invoke-virtual {v0}, Lcom/avira/android/blacklist/activities/BLDeleteActivity;->finish()V

    .line 279
    :cond_0
    return-void
.end method
