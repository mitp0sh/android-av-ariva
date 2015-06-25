.class final Lcom/avira/android/blacklist/activities/e;
.super Lcom/avira/android/custom/ab;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;


# direct methods
.method constructor <init>(Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/avira/android/blacklist/activities/e;->a:Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;

    invoke-direct {p0}, Lcom/avira/android/custom/ab;-><init>()V

    return-void
.end method


# virtual methods
.method public final e()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/e;->a:Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;

    iget-object v1, p0, Lcom/avira/android/blacklist/activities/e;->a:Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;

    invoke-static {v1}, Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;->a(Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;)Lcom/avira/android/blacklist/model/BLContact;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;->a(Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;Lcom/avira/android/blacklist/model/BLContact;)V

    .line 205
    return-void
.end method
