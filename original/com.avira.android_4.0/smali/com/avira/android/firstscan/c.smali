.class final Lcom/avira/android/firstscan/c;
.super Lcom/avira/android/custom/ab;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/avira/android/firstscan/b;


# direct methods
.method constructor <init>(Lcom/avira/android/firstscan/b;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/avira/android/firstscan/c;->a:Lcom/avira/android/firstscan/b;

    invoke-direct {p0}, Lcom/avira/android/custom/ab;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/avira/android/firstscan/c;->a:Lcom/avira/android/firstscan/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/avira/android/firstscan/b;->a(Lcom/avira/android/firstscan/b;Z)V

    .line 193
    return-void
.end method
