.class final Lcom/mixpanel/android/surveys/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/mixpanel/android/surveys/h;


# direct methods
.method constructor <init>(Lcom/mixpanel/android/surveys/h;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 471
    iput-object p1, p0, Lcom/mixpanel/android/surveys/i;->b:Lcom/mixpanel/android/surveys/h;

    iput-object p2, p0, Lcom/mixpanel/android/surveys/i;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 474
    iget-object v0, p0, Lcom/mixpanel/android/surveys/i;->b:Lcom/mixpanel/android/surveys/h;

    iget-object v0, v0, Lcom/mixpanel/android/surveys/h;->b:Lcom/mixpanel/android/surveys/f;

    iget-object v0, v0, Lcom/mixpanel/android/surveys/f;->a:Lcom/mixpanel/android/surveys/CardCarouselLayout;

    invoke-static {v0}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->a(Lcom/mixpanel/android/surveys/CardCarouselLayout;)Lcom/mixpanel/android/surveys/e;

    move-result-object v0

    iget-object v1, p0, Lcom/mixpanel/android/surveys/i;->b:Lcom/mixpanel/android/surveys/h;

    iget-object v1, v1, Lcom/mixpanel/android/surveys/h;->b:Lcom/mixpanel/android/surveys/f;

    invoke-static {v1}, Lcom/mixpanel/android/surveys/f;->a(Lcom/mixpanel/android/surveys/f;)Lcom/mixpanel/android/mpmetrics/ar;

    move-result-object v1

    iget-object v2, p0, Lcom/mixpanel/android/surveys/i;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/mixpanel/android/surveys/e;->a(Lcom/mixpanel/android/mpmetrics/ar;Ljava/lang/String;)V

    .line 475
    return-void
.end method
