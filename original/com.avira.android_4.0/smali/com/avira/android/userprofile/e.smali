.class public final Lcom/avira/android/userprofile/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/avira/android/userprofile/f;


# direct methods
.method public constructor <init>(Lcom/avira/android/userprofile/f;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/avira/android/userprofile/e;->a:Lcom/avira/android/userprofile/f;

    .line 15
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/avira/android/userprofile/e;->a:Lcom/avira/android/userprofile/f;

    invoke-interface {v0}, Lcom/avira/android/userprofile/f;->a()Lcom/avira/android/custom/BaseFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/custom/BaseFragmentActivity;->finish()V

    .line 23
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/avira/android/userprofile/e;->a:Lcom/avira/android/userprofile/f;

    invoke-interface {v0}, Lcom/avira/android/userprofile/f;->a()Lcom/avira/android/custom/BaseFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/custom/BaseFragmentActivity;->finish()V

    .line 31
    return-void
.end method
