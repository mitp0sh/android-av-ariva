.class final Lcom/avira/android/blacklist/activities/n;
.super Lcom/avira/android/custom/ab;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/avira/android/blacklist/activities/BLDeleteActivity;


# direct methods
.method constructor <init>(Lcom/avira/android/blacklist/activities/BLDeleteActivity;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/avira/android/blacklist/activities/n;->a:Lcom/avira/android/blacklist/activities/BLDeleteActivity;

    invoke-direct {p0}, Lcom/avira/android/custom/ab;-><init>()V

    return-void
.end method


# virtual methods
.method public final e()V
    .locals 4

    .prologue
    .line 206
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/blacklist/activities/n;->a:Lcom/avira/android/blacklist/activities/BLDeleteActivity;

    iget-object v2, p0, Lcom/avira/android/blacklist/activities/n;->a:Lcom/avira/android/blacklist/activities/BLDeleteActivity;

    const v3, 0x7f08024c

    invoke-virtual {v2, v3}, Lcom/avira/android/blacklist/activities/BLDeleteActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/ApplicationService;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/n;->a:Lcom/avira/android/blacklist/activities/BLDeleteActivity;

    invoke-static {v0}, Lcom/avira/android/blacklist/activities/BLDeleteActivity;->b(Lcom/avira/android/blacklist/activities/BLDeleteActivity;)Lcom/avira/android/blacklist/d/c;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/blacklist/activities/n;->a:Lcom/avira/android/blacklist/activities/BLDeleteActivity;

    invoke-static {v1}, Lcom/avira/android/blacklist/activities/BLDeleteActivity;->a(Lcom/avira/android/blacklist/activities/BLDeleteActivity;)Lcom/avira/android/blacklist/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avira/android/blacklist/a/b;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avira/android/blacklist/d/c;->a(Ljava/util/ArrayList;)V

    .line 211
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/n;->a:Lcom/avira/android/blacklist/activities/BLDeleteActivity;

    invoke-static {v0}, Lcom/avira/android/blacklist/activities/BLDeleteActivity;->c(Lcom/avira/android/blacklist/activities/BLDeleteActivity;)V

    .line 212
    return-void
.end method
