.class public final Lcom/avira/android/remotecomponents/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/avira/android/remotecomponents/CommandIntegrator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 736
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 738
    new-instance v0, Lcom/avira/android/remotecomponents/CommandIntegrator;

    invoke-direct {v0}, Lcom/avira/android/remotecomponents/CommandIntegrator;-><init>()V

    iput-object v0, p0, Lcom/avira/android/remotecomponents/b;->a:Lcom/avira/android/remotecomponents/CommandIntegrator;

    return-void
.end method


# virtual methods
.method public final a()Lcom/avira/android/remotecomponents/CommandIntegrator;
    .locals 1

    .prologue
    .line 832
    iget-object v0, p0, Lcom/avira/android/remotecomponents/b;->a:Lcom/avira/android/remotecomponents/CommandIntegrator;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lcom/avira/android/remotecomponents/b;
    .locals 1

    .prologue
    .line 806
    iget-object v0, p0, Lcom/avira/android/remotecomponents/b;->a:Lcom/avira/android/remotecomponents/CommandIntegrator;

    invoke-virtual {v0, p1}, Lcom/avira/android/remotecomponents/CommandIntegrator;->c(Ljava/lang/String;)V

    .line 807
    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/avira/android/remotecomponents/b;
    .locals 1

    .prologue
    .line 764
    iget-object v0, p0, Lcom/avira/android/remotecomponents/b;->a:Lcom/avira/android/remotecomponents/CommandIntegrator;

    invoke-virtual {v0, p1, p2}, Lcom/avira/android/remotecomponents/CommandIntegrator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    return-object p0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Lcom/avira/android/remotecomponents/b;
    .locals 1

    .prologue
    .line 779
    iget-object v0, p0, Lcom/avira/android/remotecomponents/b;->a:Lcom/avira/android/remotecomponents/CommandIntegrator;

    invoke-virtual {v0, p1, p2}, Lcom/avira/android/remotecomponents/CommandIntegrator;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    return-object p0
.end method
