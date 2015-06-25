.class final Lcom/avira/android/userprofile/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avira/android/userprofile/o;


# direct methods
.method constructor <init>(Lcom/avira/android/userprofile/o;)V
    .locals 0

    .prologue
    .line 325
    iput-object p1, p0, Lcom/avira/android/userprofile/p;->a:Lcom/avira/android/userprofile/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/avira/android/userprofile/p;->a:Lcom/avira/android/userprofile/o;

    iget-object v0, v0, Lcom/avira/android/userprofile/o;->a:Lcom/avira/android/userprofile/k;

    invoke-static {v0}, Lcom/avira/android/userprofile/k;->a(Lcom/avira/android/userprofile/k;)Lcom/avira/android/userprofile/q;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avira/android/userprofile/p;->a:Lcom/avira/android/userprofile/o;

    iget-object v0, v0, Lcom/avira/android/userprofile/o;->a:Lcom/avira/android/userprofile/k;

    invoke-virtual {v0}, Lcom/avira/android/userprofile/k;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/avira/android/userprofile/p;->a:Lcom/avira/android/userprofile/o;

    iget-object v0, v0, Lcom/avira/android/userprofile/o;->a:Lcom/avira/android/userprofile/k;

    invoke-static {v0}, Lcom/avira/android/userprofile/k;->a(Lcom/avira/android/userprofile/k;)Lcom/avira/android/userprofile/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/userprofile/q;->c()V

    .line 337
    :cond_0
    return-void
.end method
