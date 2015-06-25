.class final Lcom/avira/android/blacklist/activities/d;
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
.field final synthetic a:Lcom/avira/android/blacklist/activities/BLAddContactActivity;


# direct methods
.method private constructor <init>(Lcom/avira/android/blacklist/activities/BLAddContactActivity;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/avira/android/blacklist/activities/d;->a:Lcom/avira/android/blacklist/activities/BLAddContactActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/avira/android/blacklist/activities/BLAddContactActivity;B)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/avira/android/blacklist/activities/d;-><init>(Lcom/avira/android/blacklist/activities/BLAddContactActivity;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/d;->a:Lcom/avira/android/blacklist/activities/BLAddContactActivity;

    invoke-static {v0}, Lcom/avira/android/blacklist/activities/BLAddContactActivity;->a(Lcom/avira/android/blacklist/activities/BLAddContactActivity;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/d;->a:Lcom/avira/android/blacklist/activities/BLAddContactActivity;

    iget-object v0, v0, Lcom/avira/android/blacklist/activities/BLAddContactActivity;->b:Lcom/avira/android/blacklist/a/a;

    invoke-virtual {v0}, Lcom/avira/android/blacklist/a/a;->notifyDataSetChanged()V

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->i()V

    return-void
.end method

.method protected final onPreExecute()V
    .locals 4

    .prologue
    .line 68
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/blacklist/activities/d;->a:Lcom/avira/android/blacklist/activities/BLAddContactActivity;

    iget-object v2, p0, Lcom/avira/android/blacklist/activities/d;->a:Lcom/avira/android/blacklist/activities/BLAddContactActivity;

    const v3, 0x7f080263

    invoke-virtual {v2, v3}, Lcom/avira/android/blacklist/activities/BLAddContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/ApplicationService;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 70
    return-void
.end method
