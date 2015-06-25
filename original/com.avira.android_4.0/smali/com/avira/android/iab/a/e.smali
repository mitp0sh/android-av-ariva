.class final Lcom/avira/android/iab/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avira/android/iab/a/j;

.field final synthetic b:Lcom/avira/android/iab/a/i;

.field final synthetic c:Lcom/avira/android/iab/a/d;


# direct methods
.method constructor <init>(Lcom/avira/android/iab/a/d;Lcom/avira/android/iab/a/j;Lcom/avira/android/iab/a/i;)V
    .locals 0

    .prologue
    .line 773
    iput-object p1, p0, Lcom/avira/android/iab/a/e;->c:Lcom/avira/android/iab/a/d;

    iput-object p2, p0, Lcom/avira/android/iab/a/e;->a:Lcom/avira/android/iab/a/j;

    iput-object p3, p0, Lcom/avira/android/iab/a/e;->b:Lcom/avira/android/iab/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 776
    iget-object v0, p0, Lcom/avira/android/iab/a/e;->c:Lcom/avira/android/iab/a/d;

    iget-object v0, v0, Lcom/avira/android/iab/a/d;->c:Lcom/avira/android/iab/a/h;

    iget-object v1, p0, Lcom/avira/android/iab/a/e;->a:Lcom/avira/android/iab/a/j;

    iget-object v2, p0, Lcom/avira/android/iab/a/e;->b:Lcom/avira/android/iab/a/i;

    invoke-interface {v0, v1, v2}, Lcom/avira/android/iab/a/h;->a(Lcom/avira/android/iab/a/j;Lcom/avira/android/iab/a/i;)V

    .line 777
    return-void
.end method
