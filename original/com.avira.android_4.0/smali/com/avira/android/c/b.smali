.class final Lcom/avira/android/c/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avira/android/c/a;


# direct methods
.method constructor <init>(Lcom/avira/android/c/a;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/avira/android/c/b;->a:Lcom/avira/android/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/avira/android/c/b;->a:Lcom/avira/android/c/a;

    invoke-static {v0}, Lcom/avira/android/c/a;->a(Lcom/avira/android/c/a;)Lcom/avira/android/remotecomponents/CommandIntegrator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avira/android/c/b;->a:Lcom/avira/android/c/a;

    invoke-static {v0}, Lcom/avira/android/c/a;->a(Lcom/avira/android/c/a;)Lcom/avira/android/remotecomponents/CommandIntegrator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/remotecomponents/CommandIntegrator;->a()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 121
    iget-object v0, p0, Lcom/avira/android/c/b;->a:Lcom/avira/android/c/a;

    iget-object v1, p0, Lcom/avira/android/c/b;->a:Lcom/avira/android/c/a;

    invoke-static {v1}, Lcom/avira/android/c/a;->a(Lcom/avira/android/c/a;)Lcom/avira/android/remotecomponents/CommandIntegrator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avira/android/c/a;->a(Lcom/avira/android/remotecomponents/CommandIntegrator;)V

    .line 127
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/avira/android/c/b;->a:Lcom/avira/android/c/a;

    invoke-static {v0}, Lcom/avira/android/c/a;->b(Lcom/avira/android/c/a;)V

    goto :goto_0
.end method
