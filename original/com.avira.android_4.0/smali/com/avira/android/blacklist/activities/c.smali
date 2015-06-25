.class final Lcom/avira/android/blacklist/activities/c;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/avira/android/blacklist/activities/BLAddCallLogActivity;


# direct methods
.method private constructor <init>(Lcom/avira/android/blacklist/activities/BLAddCallLogActivity;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/avira/android/blacklist/activities/c;->a:Lcom/avira/android/blacklist/activities/BLAddCallLogActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/avira/android/blacklist/activities/BLAddCallLogActivity;B)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/avira/android/blacklist/activities/c;-><init>(Lcom/avira/android/blacklist/activities/BLAddCallLogActivity;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/c;->a:Lcom/avira/android/blacklist/activities/BLAddCallLogActivity;

    iget-object v0, v0, Lcom/avira/android/blacklist/activities/BLAddCallLogActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/avira/android/blacklist/activities/c;->a:Lcom/avira/android/blacklist/activities/BLAddCallLogActivity;

    iget-object v0, v0, Lcom/avira/android/blacklist/activities/BLAddCallLogActivity;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/avira/android/blacklist/activities/c;->a:Lcom/avira/android/blacklist/activities/BLAddCallLogActivity;

    iget-object v1, v1, Lcom/avira/android/blacklist/activities/BLAddCallLogActivity;->c:Lcom/avira/android/blacklist/d/v;

    invoke-virtual {v1}, Lcom/avira/android/blacklist/d/v;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/c;->a:Lcom/avira/android/blacklist/activities/BLAddCallLogActivity;

    iget-object v0, v0, Lcom/avira/android/blacklist/activities/BLAddCallLogActivity;->b:Lcom/avira/android/blacklist/a/a;

    invoke-virtual {v0}, Lcom/avira/android/blacklist/a/a;->notifyDataSetChanged()V

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->i()V

    return-void
.end method

.method protected final onPreExecute()V
    .locals 4

    .prologue
    .line 25
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/blacklist/activities/c;->a:Lcom/avira/android/blacklist/activities/BLAddCallLogActivity;

    iget-object v2, p0, Lcom/avira/android/blacklist/activities/c;->a:Lcom/avira/android/blacklist/activities/BLAddCallLogActivity;

    const v3, 0x7f080263

    invoke-virtual {v2, v3}, Lcom/avira/android/blacklist/activities/BLAddCallLogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/ApplicationService;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 27
    return-void
.end method
