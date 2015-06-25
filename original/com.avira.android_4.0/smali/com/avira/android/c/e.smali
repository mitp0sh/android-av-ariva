.class final Lcom/avira/android/c/e;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/avira/android/c/a;


# direct methods
.method constructor <init>(Lcom/avira/android/c/a;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lcom/avira/android/c/e;->a:Lcom/avira/android/c/a;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/avira/android/c/e;->a:Lcom/avira/android/c/a;

    invoke-static {v0}, Lcom/avira/android/c/a;->c(Lcom/avira/android/c/a;)V

    .line 298
    return-void
.end method
