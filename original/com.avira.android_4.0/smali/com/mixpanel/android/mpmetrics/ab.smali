.class final Lcom/mixpanel/android/mpmetrics/ab;
.super Lcom/mixpanel/android/mpmetrics/w;
.source "SourceFile"


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/mixpanel/android/mpmetrics/w;


# direct methods
.method constructor <init>(Lcom/mixpanel/android/mpmetrics/w;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1123
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/ab;->c:Lcom/mixpanel/android/mpmetrics/w;

    iput-object p2, p0, Lcom/mixpanel/android/mpmetrics/ab;->b:Ljava/lang/String;

    iget-object v0, p1, Lcom/mixpanel/android/mpmetrics/w;->a:Lcom/mixpanel/android/mpmetrics/r;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/mixpanel/android/mpmetrics/w;-><init>(Lcom/mixpanel/android/mpmetrics/r;B)V

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1126
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/ab;->b:Ljava/lang/String;

    return-object v0
.end method
