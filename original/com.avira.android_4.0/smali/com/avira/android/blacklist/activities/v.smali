.class final Lcom/avira/android/blacklist/activities/v;
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
.field final synthetic a:Lcom/avira/android/blacklist/activities/BLImportActivity;


# direct methods
.method private constructor <init>(Lcom/avira/android/blacklist/activities/BLImportActivity;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/avira/android/blacklist/activities/v;->a:Lcom/avira/android/blacklist/activities/BLImportActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/avira/android/blacklist/activities/BLImportActivity;B)V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/avira/android/blacklist/activities/v;-><init>(Lcom/avira/android/blacklist/activities/BLImportActivity;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/v;->a:Lcom/avira/android/blacklist/activities/BLImportActivity;

    invoke-static {v0}, Lcom/avira/android/blacklist/activities/BLImportActivity;->a(Lcom/avira/android/blacklist/activities/BLImportActivity;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/v;->a:Lcom/avira/android/blacklist/activities/BLImportActivity;

    invoke-static {v0}, Lcom/avira/android/blacklist/activities/BLImportActivity;->b(Lcom/avira/android/blacklist/activities/BLImportActivity;)Lcom/avira/android/blacklist/a/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/blacklist/a/o;->notifyDataSetChanged()V

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->i()V

    return-void
.end method

.method protected final onPreExecute()V
    .locals 4

    .prologue
    .line 132
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/blacklist/activities/v;->a:Lcom/avira/android/blacklist/activities/BLImportActivity;

    iget-object v2, p0, Lcom/avira/android/blacklist/activities/v;->a:Lcom/avira/android/blacklist/activities/BLImportActivity;

    const v3, 0x7f080263

    invoke-virtual {v2, v3}, Lcom/avira/android/blacklist/activities/BLImportActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/ApplicationService;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 133
    return-void
.end method
